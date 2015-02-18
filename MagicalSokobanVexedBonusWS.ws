| window view x y |
aSV := (SokobanVexed new initialize: 1).
x := (aSV width) * 45.
y := (aSV height) * 45.
view := SokobanVexedView model: aSV. 
	window := ApplicationWindow new.
	window
		label: 'SokobanVexed';
		minimumSize: x @ y;
		maximumSize: x @ y;
		component: view;
		open.
view controller getFocus.