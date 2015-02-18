#include <ncurses.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>

struct point {
    int y;
    int x;
};
typedef struct point point;

int height = 10, width = 8;
char map_d[10][8] = {
    /*       0    1    2    3    4    5    6    7    8    9   10   11   12   13   14   15 */
    /* 0 */{'#', '#', '#', '#', '#', '#', '#', '#'},
    /* 1 */{'#', '#', '#', '#', ' ', ' ', ' ', '#'},
    /* 2 */{'#', ' ', ' ', ' ', ' ', '#', 'H', '#'},
    /* 3 */{'#', ' ', ' ', ' ', 'r', ' ', 'H', '#'},
    /* 4 */{'#', ' ', ' ', '#', '#', '#', 'H', '#'},
    /* 5 */{'#', ' ', 'g', ' ', 'y', ' ', 'H', '#'},
    /* 6 */{'#', '#', 'r', ' ', '#', '#', 'H', '#'},
    /* 7 */{'#', '#', '#', ' ', ' ', ' ', 'H', '#'},
    /* 8 */{'#', 'y', 'g', ' ', ' ', ' ', ' ', '#'},
    /* 9 */{'#', '#', '#', '#', '#', '#', '#', '#'}
};

int ladder_count = 6;
point ladder_d[6] = {
    {2, 6},
    {3, 6},
    {4, 6},
    {5, 6},
    {6, 6},
    {7, 6}
};

point human_d = {3, 5}; /* human */

char default_command_message[] = "Press r to reset, q to quit, s to load move sequence.";
char deafult_map_loaded_message[] = "Default map loaded!";

WINDOW *create_newwin(int height, int width, int starty, int startx);
void draw_field(short *animating, short gameover);
void key_in(int, point *);
void gravity_and_magnet(point *cp, short *animating, point *unstable, short gameover);
void destroy(short *animating, short gameover);
void* readFile(const char *path, int *lSize);
short parseMap(char *map_body);
void destroy_win(WINDOW *local_win);
void print_scroll(short enabled, point pos, int color);
void check_trigger(point *cp);
short is_box(char b);
short is_bludger(char b);
short magnet_effect(short enabled, point magnet, point cp, short *animating);
short bludger_effect(point *cp, short *animating, point *unstable, short gameover);

point cp, *ladder, human; /* the current point */
point red_scroll = {-1, -1}, blue_scroll = {-1, -1}, green_scroll = {-1, -1};
point red_magnet = {-1, -1}, blue_magnet = {-1, -1}, green_magnet = {-1, -1};
short red_enabled = 0, blue_enabled = 0, green_enabled = 0;
short on_broom = 0;
WINDOW *my_win;
int box_count, boxes = 6, level = 1, max_level = 1;
char **area, **map, **boom_map;

int main(int argc, char *argv[]) {
    int startx, starty;
    int sequence, ch = 0;
    char filename[262];
    short animating = 0, reading = 0, defaultmap = 0, gameover = 0;
    point unstable = {-1, -1};
    FILE *inputfile;

    initscr(); /* Start curses mode				*/
    /*raw();*/ /* Line buffering disabled			*/
    keypad(stdscr, TRUE); /* We get F1, F2 etc..				*/
    curs_set(0); /* hide the cursor					*/
    noecho(); /* Don't echo() while we do getch 	*/
    cbreak(); /* Line buffering disabled, Pass on everty thing to me */

    if (argc > 1) {
        /* if user has specified a level */
        sscanf(argv[1], "%d", &max_level);
        if (level <= 0)
            printw("Error level number! %s", deafult_map_loaded_message);
        /* first level loaded */
        sprintf(filename, "maps/map%d.txt", level);
        int filesize = 0;
        char *map_body = (char *) readFile(filename, &filesize);

        /* if user has specified a WRONG level */
        if (map_body == NULL) {
            printw("Can't open the file! %s", deafult_map_loaded_message);
            defaultmap = 1;
        } else {
            defaultmap = parseMap(map_body);
        }
    } else {
        /* if user has NOT specified a level */
        printw("No map file input! %s", deafult_map_loaded_message);
        defaultmap = 1;
    }

    if (defaultmap) {
        /* initialize the default map data */
        cp = human = human_d;
        box_count = boxes;

        /* initialize the default ladder data */
        ladder = (point*) malloc(6 * sizeof (point));
        move(40, 40);
        int i;
        for (i = 0; i < ladder_count; i++) {
            ladder[i] = ladder_d[i];
        }
        /* initialize the default map grid data */
        int y;
        if ((area = (char**) malloc(height * sizeof (char*))) == NULL) {
            /* error */
        }
        if ((map = (char**) malloc(height * sizeof (char*))) == NULL) {
            /* error */
        }
        if ((boom_map = (char**) malloc(height * sizeof (char*))) == NULL) {
            /* error */
        }
        for (y = 0; y < height; y++) {
            /* here is the size of given row, no need to
             * multiply by sizeof( char ), it's always 1
             */
            if ((area[y] = (char*) malloc(width)) == NULL) {
                /* error */
            }
            if ((map[y] = (char*) malloc(width)) == NULL) {
                /* error */
            }
            if ((boom_map[y] = (char*) malloc(width)) == NULL) {
                /* error */
            }
            /* probably init the row here */
            memcpy(area[y], map_d[y], sizeof (area[y]));
            memcpy(map[y], map_d[y], sizeof (map[y]));
            memset(boom_map[y], ' ', sizeof (boom_map[y]));
        }
    } else {
        printw("Welcome! %s", default_command_message);
    }

    starty = 1; /* Calculating for a center placement */
    startx = 5; /* of the window		*/
    my_win = create_newwin(height * 2 + 2, width * 4 + 2, starty, startx);

    if (has_colors()) {
        start_color();

        /*
         * Simple color assignment, often all we need.  Color pair 0 cannot
         * be redefined.  This example uses the same value for the color
         * pair as for the foreground color, though of course that is not
         * necessary:
         */
        init_pair(1, COLOR_BLACK, COLOR_BLUE);
        init_pair(2, COLOR_BLACK, COLOR_RED);
        init_pair(3, COLOR_BLACK, COLOR_CYAN);
        init_pair(4, COLOR_BLACK, COLOR_MAGENTA);
        init_pair(5, COLOR_BLACK, COLOR_GREEN);
        init_pair(6, COLOR_BLACK, COLOR_YELLOW);
        init_pair(7, COLOR_BLACK, COLOR_BLACK);
        init_pair(8, COLOR_BLACK, COLOR_WHITE);
        init_pair(9, COLOR_WHITE, COLOR_BLACK);
        //wbkgd(my_win, COLOR_PAIR(8));
    }

    draw_field(&animating, gameover);

    /* refresh all windows */
    refresh();
    wrefresh(my_win); /* Show that box */

    while (ch != 'q') {
        /* animation delay */
        if (animating) {
            usleep(200000);
        }

        /* check if any unstable bludger may kill Harry */
        if (unstable.y > -1 && unstable.x > -1 &&
                is_bludger(area[unstable.y][unstable.x]) == 1 &&
                unstable.y + 1 == cp.y &&
                unstable.x == cp.x) {
            /* an unstable bludger kill Harry */
            animating = 1;
            gameover = 1;

            /* reset unstable position */
            unstable.y = -1;
            unstable.x = -1;
        } else {
            /* no unstable bludger kill Harry */
            /* reset unstable position */
            unstable.y = -1;
            unstable.x = -1;

            /* of course this is to simulate the gravity and magnet effect */
            gravity_and_magnet(&cp, &animating, &unstable, gameover);
            if (bludger_effect(&cp, &animating, &unstable, gameover) == -1) {
                /* Harry get killed */
                gameover = 1;
            }

            /* this is to vanish boxes */
            destroy(&animating, gameover);
        }
        /* reset the key */
        ch = 0;

        /* if it is animating or reading the sequence, no input then */
        if (!animating) {
            if (!reading) {
                ch = getch();
            } else if (reading && (sequence = fgetc(inputfile)) != EOF) {
                if (sequence == 'l') {
                    ch = KEY_LEFT;
                } else if (sequence == 'r') {
                    ch = KEY_RIGHT;
                } else if (sequence == 'u') {
                    ch = KEY_UP;
                } else if (sequence == 'd') {
                    ch = KEY_DOWN;
                }
                /* simulating human reaction time */
                usleep(100000);
            } else if (reading && sequence == EOF) {
                fclose(inputfile);
                reading = 0;
            }
        }

        if (ch == 'q') {
            /* quit */
            break;
        } else if (ch == 'r') {
            cp = human;
            box_count = boxes;
            red_enabled = blue_enabled = green_enabled = 0;
            on_broom = animating = reading = defaultmap = gameover = 0;

            int y, x;
            for (y = 0; y < height; y++) {
                for (x = 0; x < width; x++) {
                    /* probably init the row here */
                    /* memcpy(area[y],map[y],sizeof(width)); */
                    area[y][x] = map[y][x];
                }
            }
            move(0, 0);
            clrtoeol();
            printw("Game has been reset! %s", default_command_message);
        } else if (ch == 's' && box_count > 0 && !gameover) {
            move(0, 0);
            clrtoeol();
            mvprintw(0, 0, "The move sequence file: ");
            keypad(stdscr, FALSE);
            curs_set(1);
            echo();
            scanw("%s", filename);
            char path[262] = "maps/";
            strcat(path, filename);
            strcpy(filename, path);
            if ((inputfile = fopen(filename, "r")) == NULL) {
                move(0, 0);
                clrtoeol();
                printw("Can't open the file!");
            } else {
                reading = 1;
            }
            keypad(stdscr, TRUE);
            curs_set(0);
            noecho();
            refresh();
            continue;
        } else if (box_count <= 0) {
            move(0, 0);
            clrtoeol();
            if (level >= max_level) {
                printw("All level finished! Press r to reset, q to quit.");
            } else {
                move(0, 0);
                clrtoeol();
                printw("Level completed! Press r to reset, q to quit, n to load next level.");

                if (ch == 'n') {
                    level++;
                    /* next level loaded */
                    sprintf(filename, "maps/map%d.txt", level);
                    int filesize = 0;
                    char *map_body = (char *) readFile(filename, &filesize);

                    /* if user has specified a WRONG level */
                    if (map_body == NULL) {
                        printw("Can't open the file! No map loaded!");
                        defaultmap = 1;
                    } else {
                        defaultmap = parseMap(map_body);
                    }
                    /* reset window and the message */
                    destroy_win(my_win);
                    my_win = create_newwin(height * 2 + 2, width * 4 + 2, starty, startx);
                    move(0, 0);
                    clrtoeol();
                    printw("Next level loaded! %s", default_command_message);
                }
            }
        } else if (gameover) {
            move(0, 0);
            clrtoeol();
            printw("Harry is killed and game over! Press r to reset, q to quit.");
        } else {
            move(0, 0);
            clrtoeol();
            printw("Welcome! %s", default_command_message);
        }

        if (box_count > 0 && !gameover) {
            key_in(ch, &cp);
        }

        draw_field(&animating, gameover);

        //refresh();
        wrefresh(my_win);
    }
    endwin(); /* End curses mode */
    /* free all allocated memory */
    int y;
    for (y = 0; y < height; y++) {
        free(area[y]);
        free(map[y]);
        free(boom_map[y]);
    }
    free(area);
    free(ladder);
    free(boom_map);
    free(map);

    return 0;
}

void destroy(short *animating, short gameover) {
    /* if animating or game over, no vanishing */
    if (*animating || gameover)
        return;
    int x = 0;
    int y = 0;
    char m;
    for (y = height - 1; y >= 0; y--) {
        for (x = 0; x < width; x++) {
            /* clear BOOM animation */
            if (area[y][x] == 'K') {
                area[y][x] = ' ';
                box_count--;
                *animating = 1;
            }
        }
    }
    /* check if two or more boxes approach */
    for (y = height - 1; y >= 0; y--) {
        for (x = 0; x < width; x++) {
            m = area[y][x];
            if (is_box(m) == 1 || is_bludger(m) == 1) {
                /* set BOOM animation */
                if (y + 1 < height && area[y + 1][x] == m) {
                    boom_map[y][x] = 'K';
                    boom_map[y + 1][x] = 'K';
                    *animating = 1;
                } else if (y - 1 >= 0 && area[y - 1][x] == m) {
                    boom_map[y][x] = 'K';
                    boom_map[y - 1][x] = 'K';
                    *animating = 1;
                } else if (x + 1 < width && area[y][x + 1] == m) {
                    boom_map[y][x] = 'K';
                    boom_map[y][x + 1] = 'K';
                    *animating = 1;
                } else if (x - 1 >= 0 && area[y][x - 1] == m) {
                    boom_map[y][x] = 'K';
                    boom_map[y][x - 1] = 'K';
                    *animating = 1;
                }
            }
        }
    }
    for (y = height - 1; y >= 0; y--) {
        for (x = 0; x < width; x++) {
            if (boom_map[y][x] == 'K') {
                area[y][x] = 'K';
                boom_map[y][x] = ' ';
            }
        }
    }
}

void gravity_and_magnet(point *cp, short *animating, point *unstable, short gameover) {
	*animating = 0;
	
	/* if game over, no effect */
    if (gameover)
        return;
    int x = 0;
    int y = 0;
    char m;
    
    /* magnet effect */
    if (magnet_effect(red_enabled, red_magnet, *cp, animating) == 1) {
        return;
    }
    if (magnet_effect(blue_enabled, blue_magnet, *cp, animating) == 1) {
        return;
    }
    if (magnet_effect(green_enabled, green_magnet, *cp, animating) == 1) {
        return;
    }

    /* gravity effect */
    for (y = height - 1; y >= 0; y--) {
        for (x = 0; x < width; x++) {
            m = area[y][x];
            if (is_box(m) == 1 || is_bludger(m) == 1) {
                /* check if a box is lifting */
                if ((y - 1 == red_magnet.y && x == red_magnet.x && red_enabled == 1) ||
                        (y - 1 == blue_magnet.y && x == blue_magnet.x && blue_enabled == 1) ||
                        (y - 1 == green_magnet.y && x == green_magnet.x && green_enabled == 1)) {
                    continue;
                }
                /* check if a box is on the top of another object */
                if (y + 1 < height && (area[y + 1][x] == ' ' || area[y + 1][x] == 'H') && !(y + 1 == cp->y && x == cp->x)) {
                    area[y + 1][x] = m;
                    area[y][x] = ' ';
                    *animating = 1;
                    if (is_bludger(m) == 1 && y + 2 == cp->y && x == cp->x) {
                        unstable->y = y + 1;
                        unstable->x = x;
                    }
                }
            }
        }
    }

    /* check if the human is on the top of another object */
    if (/*cp->y + 1 < height && */area[cp->y + 1][cp->x] == ' ' && on_broom == 0) {
        /* check if the human is on the ladder */
        if (area[cp->y][cp->x] != 'H') {
            cp->y = cp->y + 1;
            *animating = 1;
        }
    } else if (area[cp->y + 1][cp->x] == '-') {
        area[cp->y + 1][cp->x] = ' ';
        cp->y = cp->y + 1;
        *animating = 1;
        on_broom = 1;
    }
}

void key_in(int input, point *cp) {
    switch (input) {
            /* KEY UP -> go up the ladder*/
        case KEY_UP:
            if (cp->y - 1 >= 0 && area[cp->y - 1][cp->x] != '#') {
                if ((area[cp->y - 1][cp->x] == 'H' || area[cp->y][cp->x] == 'H') || on_broom == 1) {
                    if (area[cp->y - 1][cp->x] == '-') {
                        area[cp->y - 1][cp->x] = ' ';
                        on_broom = 1;
                    }
                    if (is_box(area[cp->y - 1][cp->x]) == 1 || is_bludger(area[cp->y - 1][cp->x]) == 1) {
                        if (area[cp->y - 2][cp->x] == ' ' || area[cp->y - 2][cp->x] == 'H') {
                            if (is_box(area[cp->y - 2][cp->x]) == 0 && is_bludger(area[cp->y - 2][cp->x]) == 0) {
                                area[cp->y - 2][cp->x] = area[cp->y - 1][cp->x];
                                area[cp->y - 1][cp->x] = ' ';
                                /*area[cp->y - 1][cp->x] = 'P';*/
                                cp->y = cp->y - 1;
                                check_trigger(cp);
                                break;
                            }
                        }
                    } else if (area[cp->y - 1][cp->x] == 'D') {
                        /* Harry can make bricks disappear with broom when going up */
                        area[cp->y - 1][cp->x] = ' ';
                        cp->y = cp->y - 1;
                        check_trigger(cp);
                        break;
                    } else {
                        /*area[cp->y][cp->x] = ' ';*/
                        /*area[cp->y - 1][cp->x] = 'P';*/
                        cp->y = cp->y - 1;
                        check_trigger(cp);
                        break;
                    }
                }
            }
            break;
            /* KEY RIGHT -> push the boxes (or) walk*/
        case KEY_RIGHT:
            if (cp->x + 1 < width && area[cp->y][cp->x + 1] != '#') {
                if (area[cp->y][cp->x + 1] == '-') {
                    area[cp->y][cp->x + 1] = ' ';
                    on_broom = 1;
                }
                if (area[cp->y][cp->x + 1] == 'D') {
                    area[cp->y][cp->x + 1] = ' ';
                }
                if (is_box(area[cp->y][cp->x + 1]) == 1 || is_bludger(area[cp->y][cp->x + 1]) == 1) {
                    if (cp->x + 2 < width && (area[cp->y][cp->x + 2] == ' ' || area[cp->y][cp->x + 2] == 'H')) {
                        if (is_box(area[cp->y][cp->x + 2]) == 0 && is_bludger(area[cp->y][cp->x + 2]) == 0) {
                            area[cp->y][cp->x + 2] = area[cp->y][cp->x + 1];
                            area[cp->y][cp->x + 1] = ' ';
                            /*area[cp->y][cp->x + 1] = 'P';*/
                            cp->x = cp->x + 1;
                            check_trigger(cp);
                            break;
                        }
                    }
                } else {
                    /*area[cp->y][cp->x] = ' ';*/
                    /*area[cp->y][cp->x + 1] = 'P';*/
                    cp->x = cp->x + 1;
                    check_trigger(cp);
                    break;
                }
            }
            break;
            /* KEY LEFT -> push the boxes (or) walk*/
        case KEY_LEFT:
            if (cp->x - 1 >= 0 && area[cp->y][cp->x - 1] != '#') {
                if (area[cp->y][cp->x - 1] == '-') {
                    area[cp->y][cp->x - 1] = ' ';
                    on_broom = 1;
                }
                if (area[cp->y][cp->x - 1] == 'D') {
                    area[cp->y][cp->x - 1] = ' ';
                }
                if (is_box(area[cp->y][cp->x - 1]) == 1 || is_bludger(area[cp->y][cp->x - 1]) == 1) {
                    if (cp->x - 2 >= 0 && (area[cp->y][cp->x - 2] == ' ' || area[cp->y][cp->x - 2] == 'H')) {
                        if (is_box(area[cp->y][cp->x - 2]) == 0 && is_bludger(area[cp->y][cp->x - 2]) == 0) {
                            area[cp->y][cp->x - 2] = area[cp->y][cp->x - 1];
                            area[cp->y][cp->x - 1] = ' ';
                            /*area[cp->y][cp->x - 1] = 'P';*/
                            cp->x = cp->x - 1;
                            check_trigger(cp);
                            break;
                        }
                    }
                } else {
                    /*area[cp->y][cp->x] = ' ';*/
                    /*area[cp->y][cp->x - 1] = 'P';*/
                    cp->x = cp->x - 1;
                    check_trigger(cp);
                    break;
                }
            }
            break;
            /* KEY RIGHT -> push the boxes (or) go down the ladder (or) fall down */
        case KEY_DOWN:
            if (cp->y + 1 < height && area[cp->y + 1][cp->x] != '#') {
                if (area[cp->y + 1][cp->x] == '-') {
                    area[cp->y + 1][cp->x] = ' ';
                    on_broom = 1;
                }
				
                if (is_box(area[cp->y + 1][cp->x]) == 1 || is_bludger(area[cp->y + 1][cp->x]) == 1) {
					/*
                    if (cp->y + 2 < height && (area[cp->y + 2][cp->x] == ' ' || area[cp->y + 2][cp->x] == 'H' || on_broom == 1)) {
                        if (is_box(area[cp->y + 2][cp->x]) == 0 && is_bludger(area[cp->y + 2][cp->x]) == 0) {
                            area[cp->y + 2][cp->x] = area[cp->y + 1][cp->x];
                            area[cp->y + 1][cp->x] = ' ';
                            // area[cp->y + 1][cp->x] = 'P';
                            cp->y = cp->y + 1;
                            check_trigger(cp);
                            break;
                        }
                    }
					*/
					break;
                } else if (area[cp->y + 1][cp->x] == 'D' && on_broom == 1) {
                    /* Harry can make bricks disappear with broom when going down */
                    area[cp->y + 1][cp->x] = ' ';
                    cp->y = cp->y + 1;
                    check_trigger(cp);
                    break;
                } else if (area[cp->y + 1][cp->x] == 'D' && on_broom == 0) {
                    /* Harry cannot make bricks disappear without broom when going down */
                    break;
                } else {
                    /* falling down */
                    cp->y = cp->y + 1;
                    check_trigger(cp);
                    break;
                }
            }
            break;
    }

}

void draw_field(short *animating, short gameover) {
    int x = 0;
    int y = 0;
    int i = 0;
    char m;

    /* put back the ladder */
    for (i = 0; i < ladder_count; i++) {
        if (area[ladder[i].y][ladder[i].x] == ' ') {
            area[ladder[i].y][ladder[i].x] = 'H';
        }
    }
	
    /* draw the grid */
    for (y = height - 1; y >= 0; y--) {
        for (x = 0; x < width; x++) {
            m = area[y][x];
            if (is_box(m) == 1) {
                /* draw the boxes */
                if (m == 'b') {
                    wattrset(my_win, COLOR_PAIR(1));
                } else if (m == 'r') {
                    wattrset(my_win, COLOR_PAIR(2));
                } else if (m == 'c') {
                    wattrset(my_win, COLOR_PAIR(3));
                } else if (m == 'm') {
                    wattrset(my_win, COLOR_PAIR(4));
                } else if (m == 'g') {
                    wattrset(my_win, COLOR_PAIR(5));
                } else if (m == 'y') {
                    wattrset(my_win, COLOR_PAIR(6));
                } else if (m == 'l') {
                    wattrset(my_win, COLOR_PAIR(7));
                }
                mvwaddch(my_win, y * 2 + 1, x * 4 + 1, ' ');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 2, ' ');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 3, ' ');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 4, ' ');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 1, ' ');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 2, ' ');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 3, ' ');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 4, ' ');
            } else if (is_bludger(m) == 1) {
                /* draw the bludger */
                if (m == 'B') {
                    wattrset(my_win, COLOR_PAIR(1));
                } else if (m == 'R') {
                    wattrset(my_win, COLOR_PAIR(2));
                } else if (m == 'C') {
                    wattrset(my_win, COLOR_PAIR(3));
                } else if (m == 'M') {
                    wattrset(my_win, COLOR_PAIR(4));
                } else if (m == 'G') {
                    wattrset(my_win, COLOR_PAIR(5));
                } else if (m == 'Y') {
                    wattrset(my_win, COLOR_PAIR(6));
                } else if (m == 'L') {
                    wattrset(my_win, COLOR_PAIR(7));
                }
                mvwaddch(my_win, y * 2 + 1, x * 4 + 2, ' ');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 3, ' ');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 2, ' ');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 3, ' ');

                wattrset(my_win, COLOR_PAIR(8));
                mvwaddch(my_win, y * 2 + 1, x * 4 + 1, '/');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 4, '\\');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 1, '\\');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 4, '/');
            } else if (
                    m == 'A' ||
                    m == 'V' ||
                    m == 'O') {
                /* draw the magnet */
                if (m == 'A') {
                    wattrset(my_win, COLOR_PAIR(2));
                } else if (m == 'V') {
                    wattrset(my_win, COLOR_PAIR(1));
                } else if (m == 'O') {
                    wattrset(my_win, COLOR_PAIR(5));
                }
                mvwaddch(my_win, y * 2 + 1, x * 4 + 1, ' ');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 2, ' ');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 3, ' ');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 4, ' ');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 1, ' ');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 4, ' ');

                wattrset(my_win, COLOR_PAIR(8));
                mvwaddch(my_win, y * 2 + 2, x * 4 + 2, ' ');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 3, ' ');
            } else if (
                    m == 'a' ||
                    m == 'v' ||
                    m == 'o') {
                /* I have delete 'a', 'v', 'o' in the map
                 * instead of an independent point */
                /* draw the unrolled scroll */
            } else if (m == 'P') {
                /* I have delete 'P' in the map
                 * instead of an independent point */
            } else if (m == '#') {
                /* draw the rock */
                wattrset(my_win, COLOR_PAIR(8));
                mvwaddch(my_win, y * 2 + 1, x * 4 + 1, ACS_CKBOARD);
                mvwaddch(my_win, y * 2 + 1, x * 4 + 2, ACS_CKBOARD);
                mvwaddch(my_win, y * 2 + 1, x * 4 + 3, ACS_CKBOARD);
                mvwaddch(my_win, y * 2 + 1, x * 4 + 4, ACS_CKBOARD);
                mvwaddch(my_win, y * 2 + 2, x * 4 + 1, ACS_CKBOARD);
                mvwaddch(my_win, y * 2 + 2, x * 4 + 2, ACS_CKBOARD);
                mvwaddch(my_win, y * 2 + 2, x * 4 + 3, ACS_CKBOARD);
                mvwaddch(my_win, y * 2 + 2, x * 4 + 4, ACS_CKBOARD);
            } else if (m == 'D') {
                /* draw the brick */
                wattrset(my_win, COLOR_PAIR(6));
                mvwaddch(my_win, y * 2 + 1, x * 4 + 1, '#');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 2, '#');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 3, '#');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 4, '#');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 1, '#');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 2, '#');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 3, '#');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 4, '#');
            } else if (m == '-') {
                /* draw the broom */
                wattrset(my_win, COLOR_PAIR(8));
                mvwaddch(my_win, y * 2 + 1, x * 4 + 1, ' ');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 2, ' ');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 3, '_');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 4, '/');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 1, ACS_DIAMOND);
                mvwaddch(my_win, y * 2 + 2, x * 4 + 2, ACS_LRCORNER);
                mvwaddch(my_win, y * 2 + 2, x * 4 + 3, ' ');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 4, ' ');
            } else if (m == 'H') {
                /* draw the ladder */
                wattrset(my_win, COLOR_PAIR(8));
                mvwaddch(my_win, y * 2 + 1, x * 4 + 1, ACS_LTEE);
                mvwaddch(my_win, y * 2 + 1, x * 4 + 2, ACS_HLINE);
                mvwaddch(my_win, y * 2 + 1, x * 4 + 3, ACS_HLINE);
                mvwaddch(my_win, y * 2 + 1, x * 4 + 4, ACS_RTEE);
                mvwaddch(my_win, y * 2 + 2, x * 4 + 1, ACS_LTEE);
                mvwaddch(my_win, y * 2 + 2, x * 4 + 2, ACS_HLINE);
                mvwaddch(my_win, y * 2 + 2, x * 4 + 3, ACS_HLINE);
                mvwaddch(my_win, y * 2 + 2, x * 4 + 4, ACS_RTEE);
            } else if (m == ' ') {
                /* draw the space */
                wattrset(my_win, COLOR_PAIR(8));
                mvwaddch(my_win, y * 2 + 1, x * 4 + 1, ' ');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 2, ' ');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 3, ' ');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 4, ' ');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 1, ' ');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 2, ' ');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 3, ' ');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 4, ' ');
            } else if (m == 'K') {
                /* draw the BOOM effect */
                wattrset(my_win, COLOR_PAIR(8));
                mvwaddch(my_win, y * 2 + 1, x * 4 + 1, '\\');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 2, '|');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 3, '|');
                mvwaddch(my_win, y * 2 + 1, x * 4 + 4, '/');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 1, '/');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 2, '|');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 3, '|');
                mvwaddch(my_win, y * 2 + 2, x * 4 + 4, '\\');
            }
        }
    }
    
	/* draw the scroll*/
	if (red_scroll.x != -1) {
		print_scroll(red_enabled, red_scroll, 2);
    }
    if (blue_scroll.x != -1) {
		print_scroll(blue_enabled, blue_scroll, 1);
    }
    if (green_scroll.x != -1) {
		print_scroll(green_enabled, green_scroll, 5);
    }
	
    /* Draw the human */
    if (!gameover) {
        if (red_scroll.x == cp.x && red_scroll.y == cp.y) {
            wattrset(my_win, COLOR_PAIR(2));
        } else if (blue_scroll.x == cp.x && blue_scroll.y == cp.y) {
            wattrset(my_win, COLOR_PAIR(1));
        } else if (green_scroll.x == cp.x && green_scroll.y == cp.y) {
            wattrset(my_win, COLOR_PAIR(5));
        } else {
            wattrset(my_win, COLOR_PAIR(8));
        }
        mvwaddch(my_win, cp.y * 2 + 2, cp.x * 4 + 2, '/');
        mvwaddch(my_win, cp.y * 2 + 2, cp.x * 4 + 3, '\\');
        if ((red_enabled == 1 && red_scroll.x == cp.x && red_scroll.y == cp.y) ||
                (blue_enabled == 1 && blue_scroll.x == cp.x && blue_scroll.y == cp.y) ||
                (green_enabled == 1 && green_scroll.x == cp.x && green_scroll.y == cp.y)
                ) {
            mvwaddch(my_win, cp.y * 2 + 1, cp.x * 4 + 2, ACS_LEQUAL);
            mvwaddch(my_win, cp.y * 2 + 1, cp.x * 4 + 3, ACS_GEQUAL);
        } else {
            wattrset(my_win, COLOR_PAIR(8));
            mvwaddch(my_win, cp.y * 2 + 1, cp.x * 4 + 2, ACS_LEQUAL);
            mvwaddch(my_win, cp.y * 2 + 1, cp.x * 4 + 3, ACS_GEQUAL);
        }
        /* Draw the human on the broom */
        if (on_broom == 1) {
            wattrset(my_win, COLOR_PAIR(8));
            mvwaddch(my_win, cp.y * 2 + 1, cp.x * 4 + 4, '/');
            mvwaddch(my_win, cp.y * 2 + 2, cp.x * 4 + 1, ACS_DIAMOND);
        }
    } else {
        /* Harry get killed */
        wattrset(my_win, COLOR_PAIR(9));
        mvwaddch(my_win, cp.y * 2 + 1, cp.x * 4 + 1, ' ');
        mvwaddch(my_win, cp.y * 2 + 1, cp.x * 4 + 2, ' ');
        mvwaddch(my_win, cp.y * 2 + 1, cp.x * 4 + 3, ACS_PLUS);
        mvwaddch(my_win, cp.y * 2 + 1, cp.x * 4 + 4, ' ');
        mvwaddch(my_win, cp.y * 2 + 2, cp.x * 4 + 1, ' ');
        mvwaddch(my_win, cp.y * 2 + 2, cp.x * 4 + 2, ' ');
        mvwaddch(my_win, cp.y * 2 + 2, cp.x * 4 + 3, ACS_VLINE);
        mvwaddch(my_win, cp.y * 2 + 2, cp.x * 4 + 4, ' ');
    }
}

WINDOW *create_newwin(int height, int width, int starty, int startx) {
    WINDOW *local_win;

    local_win = newwin(height, width, starty, startx);
    wborder(local_win, ACS_VLINE, ACS_VLINE, ACS_HLINE, ACS_HLINE, ACS_ULCORNER, ACS_URCORNER, ACS_LLCORNER, ACS_LRCORNER);

    return local_win;
}

void* readFile(const char *path, int *lSize) {
    FILE *fp = fopen(path, "rb");
    if (fp == NULL) {
        return NULL;
    }

    // obtain file size:
    fseek(fp, 0, SEEK_END);
    *lSize = ftell(fp);
    rewind(fp);

    void *file = malloc(*lSize); // save temp_data from cache
    // copy the file into the buffer:
    fread(file, 1, *lSize, fp);
    fclose(fp);

    return file;
}

short parseMap(char *map_body) {
    /* line-by-line Tokenization */
    char *line, *save_ptr1;

    /* reset all item may not be existed */
	red_enabled = blue_enabled = green_enabled = 0;
    red_scroll.y = blue_scroll.y = green_scroll.y = -1;
    red_scroll.x = blue_scroll.x = green_scroll.x = -1;
    red_magnet.y = blue_magnet.y = green_magnet.y = -1;
    red_magnet.x = blue_magnet.x = green_magnet.x = -1;
	on_broom = 0;

    /* Check --> Header ends in CRLF */
    if ((strstr(map_body, "\r\n") == NULL) && (strstr(map_body, "\n") == NULL) && (strstr(map_body, " ") == NULL)) {
        printw("The map is malformed! %s", deafult_map_loaded_message);
        return 1;
    }
    char *word, *save_ptr2;

    /* Check --> Format of the first line (<Width> <Height>)
     * Extract --> (for both) */
    if (!(line = strtok_r(map_body, "\r\n", &save_ptr1))) {
        printw("The map is malformed! %s", deafult_map_loaded_message);
        return 1;
    } else {
        int x, y, l = 0;
        if (level > 1) {
            /* clear all data */
            for (y = 0; y < height; y++) {
                free(area[y]);
                free(map[y]);
                free(boom_map[y]);
            }
            free(area);
            free(ladder);
            free(map);
            free(boom_map);
        }

        word = strtok_r(line, " ", &save_ptr2);
        /* tooooooo tight to place a human and two boxes */
        if ((width = atoi(word)) <= 1) {
            printw("The map is strange to play! %s", deafult_map_loaded_message);
            return 1;
        }
        if (!(word = strtok_r(NULL, " ", &save_ptr2))) {
            printw("The map is strange to play! %s", deafult_map_loaded_message);
            return 1;
        }
        /* no rock on the floor */
        if ((height = atoi(word)) <= 1) {
            printw("The map is strange to play! %s", deafult_map_loaded_message);
            return 1;
        }
        /* For the remaining lines, extract the map grid data */
        boxes = ladder_count = 0;

        /* allocate memory to these pointer */
        if ((area = (char**) malloc(height * sizeof (char*))) == NULL) {
            /* error */
        }
        if ((map = (char**) malloc(height * sizeof (char*))) == NULL) {
            /* error */
        }
        if ((boom_map = (char**) malloc(height * sizeof (char*))) == NULL) {
            /* error */
        }

        /* grab all useful information and put the map grid data*/
        for (y = 0; y < height; y++) {
            /* here is the size of given row */

            /* allocate memory to these pointer */
            if ((area[y] = (char*) malloc(width * sizeof (char*))) == NULL) {
                /* error */
            }
            if ((map[y] = (char*) malloc(width * sizeof (char*))) == NULL) {
                /* error */
            }
            if ((boom_map[y] = (char*) malloc(width * sizeof (char*))) == NULL) {
                /* error */
            }

            if (!(line = strtok_r(NULL, "\r\n", &save_ptr1))) {
                y = -1;
                break;
            }
            for (x = 0; x < width; x++) {
                map[y][x] = area[y][x] = line[x];
                boom_map[y][x] = ' ';

                if (line[x] == 'P') {
                    /* the grid is placed a human */
                    /* delete the human from the grid
                     * and store it in another way */
                    human.y = cp.y = y;
                    human.x = cp.x = x;
                    map[y][x] = area[y][x] = ' ';
                } else if (line[x] == 'H') {
                    /* the grid is placed a ladder */
                    ladder_count++;
                } else if (is_box(area[y][x]) || is_bludger(area[y][x])) {
                    /* the grid is placed a box or bludger*/
                    box_count++;
                    boxes++;
                } else if (area[y][x] == 'a') {
                    red_scroll.y = y;
                    red_scroll.x = x;
                    map[y][x] = area[y][x] = ' ';
                } else if (area[y][x] == 'v') {
                    blue_scroll.y = y;
                    blue_scroll.x = x;
                    map[y][x] = area[y][x] = ' ';
                } else if (area[y][x] == 'o') {
                    green_scroll.y = y;
                    green_scroll.x = x;
                    map[y][x] = area[y][x] = ' ';
                } else if (area[y][x] == 'A') {
                    red_magnet.y = y;
                    red_magnet.x = x;
                } else if (area[y][x] == 'V') {
                    blue_magnet.y = y;
                    blue_magnet.x = x;
                } else if (area[y][x] == 'O') {
                    green_magnet.y = y;
                    green_magnet.x = x;
                }
            }
        }
        /* store the point of ladders */
        ladder = (point*) malloc(ladder_count * sizeof (point));
        for (y = height - 1; y >= 0; y--) {
            for (x = 0; x < width; x++) {
                if (area[y][x] == 'H') {
                    ladder[l].y = y;
                    ladder[l].x = x;
                    l++;
                }
                if (l >= ladder_count) {
                    y = -2;
                    break;
                }
            }
        }

        /* something wrong parsing the map in the loop */
        if (y == -1) {
            printw("The map is malformed! %s", deafult_map_loaded_message);
            return 1;
        }
    }

    return 0;
}

void destroy_win(WINDOW *local_win) {
    /* box(local_win, ' ', ' '); : This won't produce the desired
     * result of erasing the window. It will leave it's four corners
     * and so an ugly remnant of window.
     */
    wborder(local_win, ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ');
    /* The parameters taken are
     * 1. win: the window on which to operate
     * 2. ls: character to be used for the left side of the window
     * 3. rs: character to be used for the right side of the window
     * 4. ts: character to be used for the top side of the window
     * 5. bs: character to be used for the bottom side of the window
     * 6. tl: character to be used for the top left corner of the window
     * 7. tr: character to be used for the top right corner of the window
     * 8. bl: character to be used for the bottom left corner of the window
     * 9. br: character to be used for the bottom right corner of the window
     */
    wclear(local_win);
    wrefresh(local_win);
    delwin(local_win);
}

void print_scroll(short enabled, point pos, int color) {
	char m = area[pos.y][pos.x];
	if(m == ' '){
		if (enabled == 0) {
			wattrset(my_win, COLOR_PAIR(color));
			mvwaddch(my_win, pos.y * 2 + 2, pos.x * 4 + 2, ' ');
			mvwaddch(my_win, pos.y * 2 + 2, pos.x * 4 + 3, ' ');

			wattrset(my_win, COLOR_PAIR(8));
			mvwaddch(my_win, pos.y * 2 + 1, pos.x * 4 + 1, ' ');
			mvwaddch(my_win, pos.y * 2 + 1, pos.x * 4 + 2, ' ');
			mvwaddch(my_win, pos.y * 2 + 1, pos.x * 4 + 3, ' ');
			mvwaddch(my_win, pos.y * 2 + 1, pos.x * 4 + 4, ' ');
			mvwaddch(my_win, pos.y * 2 + 2, pos.x * 4 + 1, ' ');
			mvwaddch(my_win, pos.y * 2 + 2, pos.x * 4 + 4, ' ');
		} else if (enabled == 1) {
			wattrset(my_win, COLOR_PAIR(color));
			mvwaddch(my_win, pos.y * 2 + 1, pos.x * 4 + 2, ACS_TTEE);
			mvwaddch(my_win, pos.y * 2 + 1, pos.x * 4 + 3, ACS_TTEE);
			mvwaddch(my_win, pos.y * 2 + 2, pos.x * 4 + 2, ACS_BTEE);
			mvwaddch(my_win, pos.y * 2 + 2, pos.x * 4 + 3, ACS_BTEE);

			wattrset(my_win, COLOR_PAIR(8));
			mvwaddch(my_win, pos.y * 2 + 1, pos.x * 4 + 1, ACS_ULCORNER);
			mvwaddch(my_win, pos.y * 2 + 1, pos.x * 4 + 4, ACS_URCORNER);
			mvwaddch(my_win, pos.y * 2 + 2, pos.x * 4 + 1, ACS_LLCORNER);
			mvwaddch(my_win, pos.y * 2 + 2, pos.x * 4 + 4, ACS_LRCORNER);
		}
	}
}

void check_trigger(point *cp) {
    if (cp->y == red_scroll.y && cp->x == red_scroll.x) {
        red_enabled = 1 - red_enabled;
    }
    if (cp->y == blue_scroll.y && cp->x == blue_scroll.x) {
        blue_enabled = 1 - blue_enabled;
    }
    if (cp->y == green_scroll.y && cp->x == green_scroll.x) {
        green_enabled = 1 - green_enabled;
    }
}

short is_box(char b) {
    if (b == 'b' ||
            b == 'r' ||
            b == 'c' ||
            b == 'm' ||
            b == 'g' ||
            b == 'y' ||
            b == 'l') {
        return 1;
    }
    return 0;
}

short is_bludger(char b) {
    if (b == 'B' ||
            b == 'R' ||
            b == 'C' ||
            b == 'M' ||
            b == 'G' ||
            b == 'Y' ||
            b == 'L') {
        return 1;
    }
    return 0;
}

short magnet_effect(short enabled, point magnet, point cp, short *animating) {
    int x = 0;
    int y = 0;
    char m;
    /* magnet effect */
    if (enabled == 1) {
        x = magnet.x;
        for (y = magnet.y + 1; y < height; y++) {
            m = area[y][x];
            /* Harry blocked */
            if (y == cp.y && x == cp.x) {
                break;
            } else if (m == ' ' || m == 'H') {
                continue;
            } else if (is_box(m) == 1 || is_bludger(m) == 1) {
                if (y == magnet.y + 1) {
                    break;
                }
                area[y - 1][x] = m;
                area[y][x] = ' ';
                *animating = 1;
                return 1;
            }                /* other object blocked */
            else {
                break;
            }
        }
    }
    return 0;
}

short bludger_effect(point *cp, short *animating, point *unstable, short gameover) {
	/* if game over, no effect */
    if (gameover)
        return 0;
	
    int x, y;
    char m;

    /* bludger rolling-down effect */
    for (y = height - 1; y >= 0; y--) {
        for (x = 0; x < width; x++) {
            m = area[y][x];
            if (is_bludger(m) == 1) {
                /* check if a bludger is lifting */
                if ((y - 1 == red_magnet.y && x == red_magnet.x && red_enabled == 1) ||
                        (y - 1 == blue_magnet.y && x == blue_magnet.x && blue_enabled == 1) ||
                        (y - 1 == green_magnet.y && x == green_magnet.x && green_enabled == 1)) {
                    continue;
                }
                /* check if a bludger is unstable */
                if (y + 1 < height &&
                        is_bludger(area[y + 1][x]) == 1 &&
                        !(y + 1 == cp->y && x == cp->x)) {
                    /* left side */
                    if ((area[y][x - 1] == ' ' || area[y][x - 1] == 'H') &&
                            !(y == cp->y && x - 1 == cp->x) &&
                            (area[y + 1][x - 1] == ' ' || area[y + 1][x - 1] == 'H') &&
                            !(y + 1 == cp->y && x - 1 == cp->x)) {
                        area[y + 1][x - 1] = m;
                        area[y][x] = ' ';
                        *animating = 1;
                        if (y + 2 == cp->y && x - 1 == cp->x) {
                            unstable->y = y + 1;
                            unstable->x = x - 1;
                        }
                        if (y + 1 == cp->y && x - 1 == cp->x) {
                            /* Harry get killed */
                            return -1;
                        }
                    }
                    /* right side */
                    else if ((area[y][x + 1] == ' ' || area[y][x + 1] == 'H') &&
                            !(y == cp->y && x + 1 == cp->x) &&
                            (area[y + 1][x + 1] == ' ' || area[y + 1][x + 1] == 'H') &&
                            !(y + 1 == cp->y && x + 1 == cp->x)) {
                        area[y + 1][x + 1] = m;
                        area[y][x] = ' ';
                        *animating = 1;
                        if (y + 2 == cp->y && x + 1 == cp->x) {
                            unstable->y = y + 1;
                            unstable->x = x + 1;
                        }
                        if (y + 1 == cp->y && x + 1 == cp->x) {
                            /* Harry get killed */
                            return -1;
                        }
                    }
                }
            }
        }
    }
    return 0;
}
