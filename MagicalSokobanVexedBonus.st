<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.8 of 2011年3月30日 on 2013年4月14日 at 21:43:46</time-stamp>


<component-created>
<name>SokobanVexed</name> <type>package</type>
</component-created><!-- Package SokobanVexed* -->


<component-created>
<name>SokobanVexed</name> <type>package</type>
</component-created>

<class>
<name>Element</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>position imageIndex </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>ElementWOBehavior</name>
<environment>Smalltalk</environment>
<super>Element</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>Blank</name>
<environment>Smalltalk</environment>
<super>ElementWOBehavior</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>Grid</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>element subelement </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>Brick</name>
<environment>Smalltalk</environment>
<super>ElementWOBehavior</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>SokobanVexedView</name>
<environment>Smalltalk</environment>
<super>UI.CompositeView</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>ElementWithBehavior</name>
<environment>Smalltalk</environment>
<super>Element</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>board </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>Bludger</name>
<environment>Smalltalk</environment>
<super>ElementWithBehavior</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>color </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>Player</name>
<environment>Smalltalk</environment>
<super>ElementWithBehavior</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>Rock</name>
<environment>Smalltalk</environment>
<super>ElementWOBehavior</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>Ladder</name>
<environment>Smalltalk</environment>
<super>ElementWOBehavior</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>SokobanVexed</name>
<environment>Smalltalk</environment>
<super>UI.Model</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>width height currentLevel board sequence </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>GridView</name>
<environment>Smalltalk</environment>
<super>UI.View</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>images </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>Portkey</name>
<environment>Smalltalk</environment>
<super>ElementWOBehavior</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>pairPosition </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>SokobanVexedController</name>
<environment>Smalltalk</environment>
<super>UI.Controller</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>Scroll</name>
<environment>Smalltalk</environment>
<super>ElementWOBehavior</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>color state </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>Magnet</name>
<environment>Smalltalk</environment>
<super>ElementWOBehavior</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>color </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>Broom</name>
<environment>Smalltalk</environment>
<super>ElementWOBehavior</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>Box</name>
<environment>Smalltalk</environment>
<super>ElementWithBehavior</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>color </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<class>
<name>GridController</name>
<environment>Smalltalk</environment>
<super>UI.Controller</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>SokobanVexed</package>
</attributes>
</class>

<methods>
<class-id>Element class</class-id> <category>instance creation</category>

<body package="SokobanVexed" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Element</class-id> <category>accessing</category>

<body package="SokobanVexed" selector="imageIndex">imageIndex	^imageIndex</body>

<body package="SokobanVexed" selector="position">position	^position</body>
</methods>

<methods>
<class-id>Element</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	position := nil.	imageIndex := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>

<body package="SokobanVexed" selector="initialize:and:">initialize: aPoint and: anIndex	"Initialize the value of position and imageIndex."	position := aPoint.	imageIndex := anIndex.</body>
</methods>


<methods>
<class-id>ElementWithBehavior class</class-id> <category>instance creation</category>

<body package="SokobanVexed" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>ElementWithBehavior</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="canMove:">canMove: aDirection	| width height anElement playerPosition i j nextIndex x y currentIndex nextNextIndex |	"Find the player position."	width := (board at: 1) size.	height := board size.	1 to: height do: [:n |		1 to: width do: [:m |			anElement := ((board at: n) at: m) getElement.			anElement ifNotNil: [ 				((anElement imageIndex = 2) | (anElement imageIndex &gt;= 34)) ifTrue: [					playerPosition := n @ m.				].			].		].	].	x := playerPosition x.	y := playerPosition y.	currentIndex := ((board at: x) at: y) getSubelement imageIndex.	"Up check"	(aDirection = 1) ifTrue: [		i := x - 1.		j := y.		anElement := ((board at: i) at: j) getElement.		anElement ifNotNil: [ 			"Box"			((anElement imageIndex &gt;= 5) &amp; (anElement imageIndex &lt;= 11)) ifTrue: [^false.].		].		nextIndex := ((board at: i) at: j) getSubelement imageIndex.		"Ladder"		nextIndex = 4 ifTrue: [^true].		"Currently in ladder and a blank on top"		((currentIndex = 4) &amp; (nextIndex = 1)) ifTrue: [^true].	].	"Down check"	(aDirection = 2) ifTrue: [		i := x + 1.		j := y.		anElement := ((board at: i) at: j) getElement.		anElement ifNotNil: [ 			"Box"			((anElement imageIndex &gt;= 5) &amp; (anElement imageIndex &lt;= 11)) ifTrue: [^false.].		].		nextIndex := ((board at: i) at: j) getSubelement imageIndex.		"Ladder or Broom"		((nextIndex = 4) | (nextIndex = 20)) ifTrue: [^true].		"Currently in ladder and a blank below"		((currentIndex = 4) &amp; (nextIndex = 1)) ifTrue: [^true].	].	"Left check"	(aDirection = 3) ifTrue: [		i := x.		j := y - 1.		anElement := ((board at: i) at: j) getElement.		anElement ifNotNil: [ 			"Box"			((anElement imageIndex &gt;= 5) &amp; (anElement imageIndex &lt;= 11)) ifTrue: [				anElement := ((board at: i) at: j - 1) getElement.				anElement ifNotNil: [ 					"Box next to the box"					((anElement imageIndex &gt;= 5) &amp; (anElement imageIndex &lt;= 11)) ifTrue: [^false.].				].				nextNextIndex := ((board at: i) at: j - 1) getSubelement imageIndex.				"Ladder or Blank next to the box"				((nextNextIndex = 1) | (nextNextIndex = 4)) ifTrue: [^true].				^false			].		].		nextIndex := ((board at: i) at: j) getSubelement imageIndex.		"Ladder or Blank or Broom"		((nextIndex = 1) | (nextIndex = 4) | (nextIndex = 20)) ifTrue: [^true].	].	"Right check"	(aDirection = 4) ifTrue: [		i := x.		j := y + 1.		anElement := ((board at: i) at: j) getElement.		anElement ifNotNil: [ 			"Box"			((anElement imageIndex &gt;= 5) &amp; (anElement imageIndex &lt;= 11)) ifTrue: [				anElement := ((board at: i) at: j + 1) getElement.				anElement ifNotNil: [ 					"Box next to the box"					((anElement imageIndex &gt;= 5) &amp; (anElement imageIndex &lt;= 11)) ifTrue: [^false.].				].				nextNextIndex := ((board at: i) at: j + 1) getSubelement imageIndex.				"Ladder or Blank next to the box"				((nextNextIndex = 1) | (nextNextIndex = 4)) ifTrue: [^true].				^false			].		].		nextIndex := ((board at: i) at: j) getSubelement imageIndex.		"Ladder or Blank or Broom"		((nextIndex = 1) | (nextIndex = 4) | (nextIndex = 20)) ifTrue: [^true].	].	^false</body>

<body package="SokobanVexed" selector="behave">behave</body>

<body package="SokobanVexed" selector="gravityCheck">gravityCheck	"Check for the application of gravity."	| x y nextIndex anElement |	"Get element position"		x := position x.	y := position y.	"Exist element below"	anElement := ((board at: x + 1) at: y) getElement.	anElement ifNotNil: [^false].	"Blank or Ladder below"	nextIndex := ((board at: x + 1) at: y) getSubelement imageIndex.	((nextIndex = 1) | (nextIndex = 4)) ifTrue: [^true.].	^false.</body>

<body package="SokobanVexed" selector="initialize:">initialize: aBoard	board := aBoard.	^self</body>

<body package="SokobanVexed" selector="move:">move: aDirection	| i j x y |	x := position x.	y := position y.		"Up offset"	(aDirection = 1) ifTrue: [		i := x - 1.		j := y.	].	"Down offset"	(aDirection = 2) ifTrue: [		i := x + 1.		j := y.	].	"Left offset"	(aDirection = 3) ifTrue: [		i := x.		j := y - 1.	].	"Right offset"	(aDirection = 4) ifTrue: [		i := x.		j := y + 1.	].	"Copy element to the destination grid."	position := i@j.	((board at: i) at: j) setElement: (((board at: x) at: y) getElement).		"Delete element in the current grid."	((board at: x) at: y) setElement: nil.</body>
</methods>

<methods>
<class-id>ElementWithBehavior</class-id> <category>accessing</category>

<body package="SokobanVexed" selector="board">board	^board</body>
</methods>


<methods>
<class-id>Box</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="magnetic">magnetic	"Apply magnetic effect"	| x y height width blue green red anElement anIndex i d |	x := position x.	y := position y.	height := board size.	width := (board at:1) size.	blue := 0.	green := 0.	red := 0.	"Find the closed scrolls"	1 to: height do: [:n |		1 to: width do: [:m |			anElement := ((board at: n) at: m) getSubelement.			anIndex := anElement imageIndex.						"Record the closed scrolls"			anIndex = 24 ifTrue: [blue := 1.].			anIndex = 25 ifTrue: [green := 1.].			anIndex = 26 ifTrue: [red := 1.].		].	].	"Find Up for the first appeared Magnet"	i := 2.	anIndex := 1.	[((x - i) &gt;= 1) &amp; (anIndex = 1)] whileTrue:[			anElement := ((board at: (x - i)) at: y) getSubelement.			anIndex := anElement imageIndex.			anElement := ((board at: (x - i)) at: y) getElement.			anElement ifNotNil:[				anIndex := anElement imageIndex.			].						"Match Magnet and Scroll"			(((anIndex = 27) &amp; (blue = 1)) | ((anIndex = 28) &amp; (green = 1)) | ((anIndex = 29) &amp; (red = 1))) ifTrue: [				1 to: (i - 1) do: [ :j |					"Move towards Magnet"					self move: 1.					d := Delay forSeconds:0.2.					d wait.				].			].			i := i + 1.	].</body>

<body package="SokobanVexed" selector="vanishCheck">vanishCheck	"Check the condition for vanish"	| x y anElement |		"Check neighbor element"	x := position x.	y := position y.	"Up"	anElement := ((board at: x - 1) at: y) getElement.	anElement ifNotNil:[		(imageIndex = (anElement imageIndex)) ifTrue: [^true.].	].	"Down"	anElement := ((board at: x + 1) at: y) getElement.	anElement ifNotNil:[		(imageIndex = (anElement imageIndex)) ifTrue: [^true.].	].	"Left"	anElement := ((board at: x) at: y - 1) getElement.	anElement ifNotNil:[		(imageIndex = (anElement imageIndex)) ifTrue: [^true.].	].	"Right"	anElement := ((board at: x) at: y + 1) getElement.	anElement ifNotNil:[		(imageIndex = (anElement imageIndex)) ifTrue: [^true.].	].	^false.</body>

<body package="SokobanVexed" selector="behave">behave	(self magneticCheck) = 2 ifTrue:[		"Move to Magnet"		self magnetic.	] ifFalse:[		(self gravityCheck) ifTrue: [			"Fall"			self move: 2.		] ifFalse: [			(self vanishCheck) ifTrue: [				"Vanish"				self vanish.			].		].	].</body>

<body package="SokobanVexed" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	color := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>

<body package="SokobanVexed" selector="getColor">getColor	^color.</body>

<body package="SokobanVexed" selector="magneticCheck">magneticCheck	"Return value:	0 if the box is not affected by magnetic effect	1 if the box is affected by magnetic effect and is stable	2 if the box is affected by magnetic effect but is not stable"		| x y height width blue green red anElement anIndex i |	x := position x.	y := position y.	height := board size.	width := (board at:1) size.	blue := 0.	green := 0.	red := 0.	"Find the closed scrolls"	1 to: height do: [:n |		1 to: width do: [:m |			anElement := ((board at: n) at: m) getSubelement.			anIndex := anElement imageIndex.						"Record the closed scrolls"			anIndex = 24 ifTrue: [blue := 1.].			anIndex = 25 ifTrue: [green := 1.].			anIndex = 26 ifTrue: [red := 1.].		].	].	"Find Up for the first appeared Magnet"	i := 1.	anIndex := 1.	[((x - i) &gt;= 1) &amp; (anIndex = 1)] whileTrue:[			anElement := ((board at: (x - i)) at: y) getSubelement.			anIndex := anElement imageIndex.			anElement := ((board at: (x - i)) at: y) getElement.			anElement ifNotNil:[				anIndex := anElement imageIndex.			].						"Return 1 if Box is attached to Magnet already"			(i = 1) ifTrue: [				(((anIndex = 27) &amp; (blue = 1)) | ((anIndex = 28) &amp; (green = 1)) | ((anIndex = 29) &amp; (red = 1))) ifTrue: [^1.].			].			"Match Magnet and Scroll"			(((anIndex = 27) &amp; (blue = 1)) | ((anIndex = 28) &amp; (green = 1)) | ((anIndex = 29) &amp; (red = 1))) ifTrue: [^2.].			i := i + 1.	].	^0.</body>

<body package="SokobanVexed" selector="setColor:">setColor: aColor	"Set the color code to color."	color := aColor.</body>

<body package="SokobanVexed" selector="vanish">vanish	| x y anElement |		"Check neighbor element"	x := position x.	y := position y.	"Vanish itself"	((board at: x) at: y) setElement: nil.	"Up"	anElement := ((board at: x - 1) at: y) getElement.	anElement ifNotNil:[		(imageIndex = (anElement imageIndex)) ifTrue: [			"Vanish the neighbor element"			anElement vanish.		].	].	"Down"	anElement := ((board at: x + 1) at: y) getElement.	anElement ifNotNil:[		(imageIndex = (anElement imageIndex)) ifTrue: [			"Vanish the neighbor element"			anElement vanish.		].	].	"Left"	anElement := ((board at: x) at: y - 1) getElement.	anElement ifNotNil:[		(imageIndex = (anElement imageIndex)) ifTrue: [			"Vanish the neighbor element"			anElement vanish.		].	].	"Right"	anElement := ((board at: x) at: y + 1) getElement.	anElement ifNotNil:[		(imageIndex = (anElement imageIndex)) ifTrue: [			"Vanish the neighbor element"			anElement vanish.		].	].</body>

<body package="SokobanVexed" selector="gravityCheck">gravityCheck	"Check for the application of gravity."	| x y nextIndex anElement |	"Cancel gravity when magnetic effect happens"	(self magneticCheck) = 1 ifTrue: [^false].	"Get element position"		x := position x.	y := position y.	"Exist element below"	anElement := ((board at: x + 1) at: y) getElement.	anElement ifNotNil: [^false].	"Blank or Ladder below"	nextIndex := ((board at: x + 1) at: y) getSubelement imageIndex.	((nextIndex = 1) | (nextIndex = 4)) ifTrue: [^true.].	^false.</body>
</methods>

<methods>
<class-id>Box</class-id> <category>accessing</category>

<body package="SokobanVexed" selector="color">color	^color</body>
</methods>


<methods>
<class-id>ElementWOBehavior</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Rock</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Scroll</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="setState:">setState: aState	"Set the state of the scroll. 1 means opened. 0  means closed"	state := aState.</body>

<body package="SokobanVexed" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>

<body package="SokobanVexed" selector="getState">getState	"Get the state of the scroll. 1 means opened. 0  means closed"	^state.</body>

<body package="SokobanVexed" selector="setColor:">setColor: aColor	"Set the color code to color."	color := aColor.</body>

<body package="SokobanVexed" selector="getColor">getColor	^color.</body>
</methods>


<methods>
<class-id>SokobanVexedView</class-id> <category>updating</category>

<body package="SokobanVexed" selector="update:">update: anAspect	self invalidateNow.</body>
</methods>

<methods>
<class-id>SokobanVexedView</class-id> <category>accessing</category>

<body package="SokobanVexed" selector="model:">model: aSV	super model: aSV.	1 to: model height do: [ :y |		1 to: model width do: [ :x |			| aGrid view wrapper offset size |			aGrid := ((aSV board at: y) at: x).			aGrid ifNotNil: [				view := GridView model: aGrid.				offset := (x - 1 / model width) @ (y - 1 / model height).				size := (1 / model width) @ (1 / model height).				wrapper := BoundedWrapper on: view in: (offset extent: size).				self addWrapper: wrapper.			].		].	].	self controller getFocus.</body>
</methods>

<methods>
<class-id>SokobanVexedView</class-id> <category>controller accessing</category>

<body package="SokobanVexed" selector="defaultControllerClass">defaultControllerClass	^SokobanVexedController</body>
</methods>


<methods>
<class-id>Magnet</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>

<body package="SokobanVexed" selector="setColor:">setColor: aColor	"Set the color code to color."	color := aColor.</body>

<body package="SokobanVexed" selector="getColor">getColor	^color.</body>
</methods>


<methods>
<class-id>GridView class</class-id> <category>instance creation</category>

<body package="SokobanVexed" selector="model:">model: aGrid    ^super new model: aGrid</body>
</methods>


<methods>
<class-id>GridView</class-id> <category>updating</category>

<body package="SokobanVexed" selector="update:">update: anAspect	self invalidateNow.</body>
</methods>

<methods>
<class-id>GridView</class-id> <category>accessing</category>

<body package="SokobanVexed" selector="images">images	^images</body>

<body package="SokobanVexed" selector="model:">model: aGrid	super model: aGrid.    	images := Array new: 37.    	images		at: 1 put: (ImageReader fromFile: 'blank.png') image;      	at: 2 put: (ImageReader fromFile: 'harry_potter_stand.png') image;      	at: 3 put: (ImageReader fromFile: 'rock.png') image;      	at: 4 put: (ImageReader fromFile: 'ladder.png') image;      	at: 5 put: (ImageReader fromFile: 'box_blue.png') image;      	at: 6 put: (ImageReader fromFile: 'box_red.png') image;      	at: 7 put: (ImageReader fromFile: 'box_cyan.png') image;		at: 8 put: (ImageReader fromFile: 'box_magenta.png') image;		at: 9 put: (ImageReader fromFile: 'box_green.png') image;		at: 10 put: (ImageReader fromFile: 'box_yellow.png') image;		at: 11 put: (ImageReader fromFile: 'box_black.png') image;		at: 12 put: (ImageReader fromFile: 'bludger_blue.png') image;		at: 13 put: (ImageReader fromFile: 'bludger_red.png') image;		at: 14 put: (ImageReader fromFile: 'bludger_cyan.png') image;		at: 15 put: (ImageReader fromFile: 'bludger_magenta.png') image;		at: 16 put: (ImageReader fromFile: 'bludger_green.png') image;		at: 17 put: (ImageReader fromFile: 'bludger_yellow.png') image;		at: 18 put: (ImageReader fromFile: 'bludger_black.png') image;		at: 19 put: (ImageReader fromFile: 'brick.png') image;		at: 20 put: (ImageReader fromFile: 'broom.png') image;		at: 21 put: (ImageReader fromFile: 'scroll_blue.png') image;		at: 22 put: (ImageReader fromFile: 'scroll_green.png') image;		at: 23 put: (ImageReader fromFile: 'scroll_red.png') image;		at: 24 put: (ImageReader fromFile: 'close_scroll_blue.png') image;		at: 25 put: (ImageReader fromFile: 'close_scroll_green.png') image;		at: 26 put: (ImageReader fromFile: 'close_scroll_red.png') image;		at: 27 put: (ImageReader fromFile: 'magnet_blue.png') image;		at: 28 put: (ImageReader fromFile: 'magnet_green.png') image;		at: 29 put: (ImageReader fromFile: 'magnet_red.png') image;      	at: 30 put: (ImageReader fromFile: 'elevator.png') image;      	at: 31 put: (ImageReader fromFile: 'portkey1.png') image;      	at: 32 put: (ImageReader fromFile: 'portkey2.png') image;      	at: 33 put: (ImageReader fromFile: 'portkey3.png') image;      	at: 34 put: (ImageReader fromFile: 'harry_potter_broom_up.png') image;      	at: 35 put: (ImageReader fromFile: 'harry_potter_broom_down.png') image;      	at: 36 put: (ImageReader fromFile: 'harry_potter_broom_left.png') image;      	at: 37 put: (ImageReader fromFile: 'harry_potter_broom_right.png') image.	^self</body>
</methods>

<methods>
<class-id>GridView</class-id> <category>controller accessing</category>

<body package="SokobanVexed" selector="defaultControllerClass">defaultControllerClass	^GridController</body>
</methods>

<methods>
<class-id>GridView</class-id> <category>displaying</category>

<body package="SokobanVexed" selector="displayOn:">displayOn: aGraphicsContext	| anElement aSubelement |	anElement := model getElement.	aSubelement := model getSubelement.	anElement ifNotNil: [		(images at: (anElement imageIndex)) displayOn: aGraphicsContext.	] ifNil: [		(images at: (aSubelement imageIndex)) displayOn: aGraphicsContext.	].</body>
</methods>


<methods>
<class-id>Portkey</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="getPairPosition">getPairPosition	^pairPosition.</body>

<body package="SokobanVexed" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>

<body package="SokobanVexed" selector="setPairPosition:">setPairPosition: aPoint	pairPosition := aPoint.</body>
</methods>


<methods>
<class-id>SokobanVexed class</class-id> <category>instance creation</category>

<body package="SokobanVexed" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>SokobanVexed</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="play:">play: aDirection	"	up = 1		down = 2		left = 3		right = 4.	"	| anElement playerPosition x y nextNextIndex currentElement i j nextIndex nextElement nextNextElement  d win lose |	d := Delay forSeconds:0.2.	"Find player position"	1 to: height do: [:n |		1 to: width do: [:m |			anElement := ((board at: n) at: m) getElement.			anElement ifNotNil: [ 				((anElement imageIndex = 2) | (anElement imageIndex &gt;= 34)) ifTrue: [					playerPosition := n @ m.				].			].		].	].	x := playerPosition x.	y := playerPosition y.	nextNextIndex := nil.	"Up offset"	(aDirection = 1) ifTrue: [		i := x - 1.		j := y.		nextIndex := ((board at: i) at: j) getSubelement imageIndex.	].	"Down offset"	(aDirection = 2) ifTrue: [		i := x + 1.		j := y.		nextIndex := ((board at: i) at: j) getSubelement imageIndex.		nextElement := ((board at: i) at: j) getElement.		nextElement ifNotNil:[			nextIndex := ((board at: i) at: j) getElement imageIndex.		].	].	"Left offset"	(aDirection = 3) ifTrue: [		i := x.		j := y - 1.		nextIndex := ((board at: i) at: j) getSubelement imageIndex.		nextElement := ((board at: i) at: j) getElement.		nextElement ifNotNil:[			nextIndex := ((board at: i) at: j) getElement imageIndex.		].		(j &gt;= 2) ifTrue: [			nextNextIndex := ((board at: i) at: j -1) getSubelement imageIndex.			nextNextElement := ((board at: i) at: j-1) getElement.			nextNextElement ifNotNil:[				nextNextIndex := ((board at: i) at: j-1) getElement imageIndex.			].		].	].	"Right offset"	(aDirection = 4) ifTrue: [		i := x.		j := y + 1.		nextIndex := ((board at: i) at: j) getSubelement imageIndex.		nextElement := ((board at: i) at: j) getElement.		nextElement ifNotNil:[			nextIndex := ((board at: i) at: j) getElement imageIndex.		].		((j+1) &lt;= (board at:1) size) ifTrue: [			nextNextIndex := ((board at: i) at: j +1) getSubelement imageIndex.			nextNextElement := ((board at: i) at: j+1) getElement.			nextNextElement ifNotNil:[				nextNextIndex := ((board at: i) at: j+1) getElement imageIndex.			].		].	].		currentElement := ((board at: x) at: y) getElement.	(currentElement canMove: aDirection) ifTrue:[		"Left or Right and Box / Bludger next to Player"		(((aDirection = 3) | (aDirection = 4)) &amp; ((nextIndex &gt;= 5) &amp; (nextIndex &lt;= 18))) ifTrue: [			"Blank or Ladder next to Box / Bludger"			((nextNextIndex = 1) | (nextNextIndex = 4)) ifTrue: [				"Copy Box / Bludger to the next place"				nextElement move: aDirection.			].		].		currentElement move: aDirection.		d wait.	].	"Check state of element and trigger effects if neccessary"	[self stateCheck] whileTrue:[		"Box / Bludger Magnetic"		1 to: height do: [:n |			1 to: width do: [:m |				anElement := ((board at: n) at: m) getElement.				anElement ifNotNil: [ 					((anElement imageIndex &gt;= 5) &amp; (anElement imageIndex &lt;= 18)) ifTrue:[						(anElement magneticCheck) = 2 ifTrue: [anElement behave.].					].				].			].		].		"Element Gravity"		1 to: height do: [:n |			1 to: width do: [:m |				anElement := ((board at: n) at: m) getElement.				anElement ifNotNil: [ 					(anElement gravityCheck) ifTrue: [						anElement behave.						d wait.					].				].			].		].		"Bludger Roll"		1 to: height do: [:n |			1 to: width do: [:m |				anElement := ((board at: n) at: m) getElement.				anElement ifNotNil: [ 					((anElement imageIndex &gt;= 12) &amp; (anElement imageIndex &lt;= 18)) ifTrue:[						(anElement rollingCheck) ifTrue: [anElement behave.].					].				].			].		].		"Box / Bludger Vanish"		1 to: height do: [:n |			1 to: width do: [:m |				anElement := ((board at: n) at: m) getElement.				anElement ifNotNil: [ 					((anElement imageIndex &gt;= 5) &amp; (anElement imageIndex &lt;= 18)) ifTrue:[						(anElement vanishCheck) ifTrue: [							anElement behave.							d wait.						].					].				].			].		].	].	self changed.	"Check win / lose condition"	win := true.	lose := true.	1 to: height do: [:n |		1 to: width do: [:m |			anElement := ((board at: n) at: m) getElement.			anElement ifNotNil: [ 				((anElement imageIndex &gt;= 5) &amp; (anElement imageIndex &lt;= 18)) ifTrue: [					win := false.				].				((anElement imageIndex = 2) | (anElement imageIndex &gt;= 34)) ifTrue: [					lose := false.				].			].		].	].	lose ifTrue:[ Dialog warn: 'Game over!'. ] ifFalse:[		win ifTrue:[ Dialog warn: 'Congratulation!'. ].	].</body>

<body package="SokobanVexed" selector="initialize:">initialize: aLevel	"Read map data from the corresponding map file."	| fileName fileStream aWord anElement countPortkey1 countPortkey2 countPortkey3 point1 point2 point3 |		"Read map file."	Transcript clear.	fileName := ('maps\map', aLevel printString, '.txt') asFilename.	fileStream := fileName readStream.	"Initialize an array of size width * height."	width := (fileStream upTo: Character space) asNumber.	height := (fileStream upTo: Character cr) asNumber.	board := Array new: height.	1 to: height do: [:x |		board at: x put: (Array new: width).    	].	"Assign grids into board according to the type of the element."	point1 := 0 @ 0.	point2 := 0 @ 0.	point3 := 0 @ 0.	countPortkey1 := false.	countPortkey2 := false.	countPortkey3 := false.	1 to: height do: [:y |		1 to: width do: [:x |			aWord := fileStream next: 1.			(aWord = ' ') ifTrue: [ 				(board at: y) at: x put: (Grid new setSubelement: (Blank new initialize: y @ x and: 1)).			].			(aWord = 'P') ifTrue: [ 				(board at: y) at: x put: (Grid new setElement: (Player new initialize: y @ x and: 2)).				((board at: y) at: x) setSubelement: (Blank new initialize: y @ x and: 1).			].			(aWord = '#') ifTrue: [ 				(board at: y) at: x put: (Grid new setSubelement: (Rock new initialize: y @ x and: 3)).			].			(aWord = 'H') ifTrue: [ 				(board at: y) at: x put: (Grid new setSubelement: (Ladder new initialize: y @ x and: 4)).			].			(aWord = 'b') ifTrue: [ 				(board at: y) at: x put: (Grid new setElement: (Box new initialize: y @ x and: 5; setColor: 1)).				((board at: y) at: x) setSubelement: (Blank new initialize: y @ x and: 1).			].			(aWord = 'r') ifTrue: [ 				(board at: y) at: x put: (Grid new setElement: (Box new initialize: y @ x and: 6; setColor: 2)).				((board at: y) at: x) setSubelement: (Blank new initialize: y @ x and: 1).			].			(aWord = 'c') ifTrue: [ 				(board at: y) at: x put: (Grid new setElement: (Box new initialize: y @ x and: 7; setColor: 3)).				((board at: y) at: x) setSubelement: (Blank new initialize: y @ x and: 1).			].			(aWord = 'm') ifTrue: [ 				(board at: y) at: x put: (Grid new setElement: (Box new initialize: y @ x and: 8; setColor: 4)).				((board at: y) at: x) setSubelement: (Blank new initialize: y @ x and: 1).			].			(aWord = 'g') ifTrue: [ 				(board at: y) at: x put: (Grid new setElement: (Box new initialize: y @ x and: 9; setColor: 5)).				((board at: y) at: x) setSubelement: (Blank new initialize: y @ x and: 1).			].			(aWord = 'y') ifTrue: [ 				(board at: y) at: x put: (Grid new setElement: (Box new initialize: y @ x and: 10; setColor: 6)).				((board at: y) at: x) setSubelement: (Blank new initialize: y @ x and: 1).			].			(aWord = 'l') ifTrue: [ 				(board at: y) at: x put: (Grid new setElement: (Box new initialize: y @ x and: 11; setColor: 7)).				((board at: y) at: x) setSubelement: (Blank new initialize: y @ x and: 1).			].			(aWord = 'B') ifTrue: [ 				(board at: y) at: x put: (Grid new setElement: (Bludger new initialize: y @ x and: 12; setColor: 1)).				((board at: y) at: x) setSubelement: (Blank new initialize: y @ x and: 1).			].			(aWord = 'R') ifTrue: [ 				(board at: y) at: x put: (Grid new setElement: (Bludger new initialize: y @ x and: 13; setColor: 2)).				((board at: y) at: x) setSubelement: (Blank new initialize: y @ x and: 1).			].			(aWord = 'C') ifTrue: [ 				(board at: y) at: x put: (Grid new setElement: (Bludger new initialize: y @ x and: 14; setColor: 3)).				((board at: y) at: x) setSubelement: (Blank new initialize: y @ x and: 1).			].			(aWord = 'M') ifTrue: [ 				(board at: y) at: x put: (Grid new setElement: (Bludger new initialize: y @ x and: 15; setColor: 4)).				((board at: y) at: x) setSubelement: (Blank new initialize: y @ x and: 1).			].			(aWord = 'G') ifTrue: [ 				(board at: y) at: x put: (Grid new setElement: (Bludger new initialize: y @ x and: 16; setColor: 5)).				((board at: y) at: x) setSubelement: (Blank new initialize: y @ x and: 1).			].			(aWord = 'Y') ifTrue: [ 				(board at: y) at: x put: (Grid new setElement: (Bludger new initialize: y @ x and: 17; setColor: 6)).				((board at: y) at: x) setSubelement: (Blank new initialize: y @ x and: 1).			].			(aWord = 'L') ifTrue: [ 				(board at: y) at: x put: (Grid new setElement: (Bludger new initialize: y @ x and: 18; setColor: 7)).				((board at: y) at: x) setSubelement: (Blank new initialize: y @ x and: 1).			].			(aWord = 'D') ifTrue: [ 				(board at: y) at: x put: (Grid new setSubelement: (Brick new initialize: y @ x and: 19)).			].			(aWord = '-') ifTrue: [ 				(board at: y) at: x put: (Grid new setSubelement: (Broom new initialize: y @ x and: 20)).			].			(aWord = 'v') ifTrue: [ 				(board at: y) at: x put: (Grid new setSubelement: (Scroll new initialize: y @ x and: 21; setColor: 1; setState: 1)).			].			(aWord = 'o') ifTrue: [ 				(board at: y) at: x put: (Grid new setSubelement: (Scroll new initialize: y @ x and: 22; setColor: 2; setState: 1)).			].			(aWord = 'a') ifTrue: [ 				(board at: y) at: x put: (Grid new setSubelement: (Scroll new initialize: y @ x and: 23; setColor: 3; setState: 1)).			].			(aWord = 'V') ifTrue: [ 				(board at: y) at: x put: (Grid new setSubelement: (Magnet new initialize: y @ x and: 27; setColor: 1)).			].			(aWord = 'O') ifTrue: [ 				(board at: y) at: x put: (Grid new setSubelement: (Magnet new initialize: y @ x and: 28; setColor: 2)).			].			(aWord = 'A') ifTrue: [ 				(board at: y) at: x put: (Grid new setSubelement: (Magnet new initialize: y @ x and: 29; setColor: 3)).			].			(aWord = '1') ifTrue: [ 				(board at: y) at: x put: (Grid new setSubelement: (Portkey new initialize: y @ x and: 31)).				countPortkey1 ifFalse: [					"First encounter"					point1 := y @ x.					countPortkey1 := true.				] ifTrue: [					"Second encounter"					(((board at: y) at: x) getSubelement) setPairPosition: point1.					((board at: (point1 x)) at: (point1 y)) getSubelement setPairPosition: y @ x.				].			].			(aWord = '2') ifTrue: [ 				(board at: y) at: x put: (Grid new setSubelement: (Portkey new initialize: y @ x and: 32)).				countPortkey2 ifFalse: [					"First encounter"					point2 := y @ x.					countPortkey2 := true.				] ifTrue: [					"Second encounter"					(((board at: y) at: x) getSubelement) setPairPosition: point2.					((board at: (point2 x)) at: (point2 y)) getSubelement setPairPosition: y @ x.				].			].			(aWord = '3') ifTrue: [ 				(board at: y) at: x put: (Grid new setSubelement: (Portkey new initialize: y @ x and: 33)).				countPortkey3 ifFalse: [					"First encounter"					point3 := y @ x.					countPortkey3 := true.				] ifTrue: [					"Second encounter"					(((board at: y) at: x) getSubelement) setPairPosition: point3.					((board at: (point3 x)) at: (point3 y)) getSubelement setPairPosition: y @ x.				].			].		].		fileStream next: 1.	].	fileStream close.	"Initialize the elements with behavior."	1 to: height do: [:y |		1 to: width do: [:x |			anElement := ((board at: y) at: x) getElement.			anElement ifNotNil: [ 				anElement initialize: board.			].		].	].		^self</body>

<body package="SokobanVexed" selector="autoplay">autoplay</body>

<body package="SokobanVexed" selector="restartGame">restartGame</body>

<body package="SokobanVexed" selector="nextLvl">nextLvl</body>

<body package="SokobanVexed" selector="stateCheck">stateCheck	| anElement |	"Check gravity and vanish"	1 to: height do: [:n |		1 to: width do: [:m |			anElement := ((board at: n) at: m) getElement.			anElement ifNotNil: [ 				"Box / Bludger"				((anElement imageIndex &gt;= 5) &amp; (anElement imageIndex &lt;= 18)) ifTrue:[					(anElement magneticCheck) = 2 ifTrue: [^true.] ifFalse: [						(anElement gravityCheck) ifTrue: [^true.] ifFalse: [							"Bludger"							((anElement imageIndex &gt;= 12) &amp; (anElement imageIndex &lt;= 18)) ifTrue:[								(anElement rollingCheck) ifTrue: [^true.] ifFalse: [									(anElement vanishCheck) ifTrue: [^true.].								].							] ifFalse: [								"Box"								(anElement vanishCheck) ifTrue: [^true.].							].						].					].				] ifFalse: [					"Player"					(anElement gravityCheck) ifTrue: [^true.].				].			].		].	].	^false</body>

<body package="SokobanVexed" selector="loadControlSequence">loadControlSequence</body>
</methods>

<methods>
<class-id>SokobanVexed</class-id> <category>accessing</category>

<body package="SokobanVexed" selector="height">height	^height</body>

<body package="SokobanVexed" selector="width">width	^width</body>

<body package="SokobanVexed" selector="board">board	^board</body>

<body package="SokobanVexed" selector="currentLevel">currentLevel	^currentLevel</body>

<body package="SokobanVexed" selector="sequence">sequence	^sequence</body>
</methods>


<methods>
<class-id>SokobanVexedController</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="buttonFn:">buttonFn: aCase</body>

<body package="SokobanVexed" selector="clickAt:">clickAt: aPoint	</body>

<body package="SokobanVexed" selector="getFocus">getFocusself keyboardProcessor ifNotNil:[:keyboardProcessor|		(keyboardProcessor requestActivationFor: self)			ifFalse:[^view triggerEvent: #clicked].	].</body>
</methods>

<methods>
<class-id>SokobanVexedController</class-id> <category>events</category>

<body package="SokobanVexed" selector="keyPressedEvent:">keyPressedEvent: event	"Handle keyboard / mouse inputs."	 	"	up = 1		down = 2		left = 3		right = 4.	"	event keyValue = #Up ifTrue: [model play: 1].	event keyValue = #Down ifTrue: [model play: 2].	event keyValue = #Left ifTrue: [model play: 3].	event keyValue = #Right ifTrue: [model play: 4].</body>
</methods>


<methods>
<class-id>Player</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="move:">move: aDirection	| i j x y nextIndex scrollColor anIndex aPairPosition |	x := position x.	y := position y.		"Up offset"	(aDirection = 1) ifTrue: [		i := x - 1.		j := y.		anIndex := 34.	].	"Down offset"	(aDirection = 2) ifTrue: [		i := x + 1.		j := y.		anIndex := 35.	].	"Left offset"	(aDirection = 3) ifTrue: [		i := x.		j := y - 1.		anIndex := 36.	].	"Right offset"	(aDirection = 4) ifTrue: [		i := x.		j := y + 1.		anIndex := 37.	].	"Change direction of Harry when on broom"	imageIndex &gt;= 34 ifTrue:[		imageIndex := anIndex.	].	nextIndex := ((board at: i) at: j) getSubelement imageIndex.	"Copy element to the destination grid."	position := i @ j.	((board at: i) at: j) setElement: self.		"Delete element in the current grid."	((board at: x) at: y) setElement: nil.	"Player obtain Broom"	(nextIndex = 20) ifTrue:[		"Change Broom to Blank"		((board at: i) at: j) setSubelement: (Blank new initialize: i @ j and: 1).				"Change Player imageIndex"		imageIndex := 36.	].	"Player break Brick"	(nextIndex = 19) ifTrue:[		"Change Brick to Blank"		((board at: i) at: j) setSubelement: (Blank new initialize: i @ j and: 1).	].	"Player spell"	((nextIndex &gt;= 21) &amp; (nextIndex &lt;= 23)) ifTrue: [		"Magnet attract Box."		"Close scroll"		scrollColor := ((board at: i) at: j) getSubelement getColor.		((board at: i) at: j) setSubelement: (Scroll new initialize: i @ j and: (nextIndex + 3); setColor: scrollColor; setState: 0).	].	"Player unspell"	((nextIndex &gt;= 24) &amp; (nextIndex &lt;= 26)) ifTrue: [		"Magnet repel Box."		"Open scroll"		scrollColor := ((board at: i) at: j) getSubelement getColor.		((board at: i) at: j) setSubelement: (Scroll new initialize: i @ j and: (nextIndex - 3); setColor: scrollColor; setState: 1).	].	"Player get into Portkey"	((nextIndex &gt;= 31) &amp; (nextIndex &lt;= 33)) ifTrue: [		aPairPosition := ((board at: i) at: j) getSubelement getPairPosition.		"Copy element to the destination grid."		position := aPairPosition.		((board at: aPairPosition x) at: aPairPosition y) setElement: self.		"Delete element in the current and next grid."		((board at: i) at: j) setElement: nil.		].</body>

<body package="SokobanVexed" selector="canMove:">canMove: aDirection	| width height anElement playerPosition i j nextIndex x y currentIndex nextNextIndex |	"Find the player position."	width := (board at: 1) size.	height := board size.	1 to: height do: [:n |		1 to: width do: [:m |			anElement := ((board at: n) at: m) getElement.			anElement ifNotNil: [ 				((anElement imageIndex = 2) | (anElement imageIndex &gt;= 34)) ifTrue: [					playerPosition := n @ m.				].			].		].	].	x := playerPosition x.	y := playerPosition y.	currentIndex := ((board at: x) at: y) getSubelement imageIndex.	"Up check"	(aDirection = 1) ifTrue: [		i := x - 1.		j := y.		anElement := ((board at: i) at: j) getElement.		anElement ifNotNil: [ 			"Box / Bludger"			((anElement imageIndex &gt;= 5) &amp; (anElement imageIndex &lt;= 18)) ifTrue: [^false.].		].		nextIndex := ((board at: i) at: j) getSubelement imageIndex.		"Ladder"		nextIndex = 4 ifTrue: [^true].		"Currently in ladder and Blank / Scroll / Broom / Brick / Portkey on top"		((currentIndex = 4) &amp; ((nextIndex = 1) | ((nextIndex &gt;= 19) &amp; (nextIndex &lt;= 26)) | ((nextIndex &gt;= 31) &amp; (nextIndex &lt;= 33)))) ifTrue: [^true].		"Riding on Broom"		imageIndex &gt;= 34 ifTrue: [			"Blank or Brick or Scroll or Portkey"			((nextIndex = 1) | (nextIndex = 19) | ((nextIndex &gt;= 21) &amp; (nextIndex &lt;= 26)) | ((nextIndex &gt;= 31) &amp; (nextIndex &lt;= 33))) ifTrue: [^true.].		].	].	"Down check"	(aDirection = 2) ifTrue: [		i := x + 1.		j := y.		anElement := ((board at: i) at: j) getElement.		anElement ifNotNil: [ 			"Box / Bludger"			((anElement imageIndex &gt;= 5) &amp; (anElement imageIndex &lt;= 18)) ifTrue: [^false.].		].		nextIndex := ((board at: i) at: j) getSubelement imageIndex.		"Ladder"		(nextIndex = 4) ifTrue: [^true].		"Currently in ladder and Blank or Scroll or Portkey below"		((currentIndex = 4) &amp; ((nextIndex = 1) | ((nextIndex &gt;= 21) &amp; (nextIndex &lt;= 26)) | ((nextIndex &gt;= 31) &amp; (nextIndex &lt;= 33)))) ifTrue: [^true].		"Riding on Broom"		imageIndex &gt;= 34 ifTrue: [			"Blank or Brick or Scroll or Portkey"			((nextIndex = 1) | (nextIndex = 19) | ((nextIndex &gt;= 21) &amp; (nextIndex &lt;= 26)) | ((nextIndex &gt;= 31) &amp; (nextIndex &lt;= 33))) ifTrue: [^true.].		].	].	"Left check"	(aDirection = 3) ifTrue: [		i := x.		j := y - 1.		anElement := ((board at: i) at: j) getElement.		anElement ifNotNil: [ 			"Box / Bludger"			((anElement imageIndex &gt;= 5) &amp; (anElement imageIndex &lt;= 18)) ifTrue: [				anElement := ((board at: i) at: j - 1) getElement.				anElement ifNotNil: [ 					"Box / Bludger next to the Box / Bludger"					((anElement imageIndex &gt;= 5) &amp; (anElement imageIndex &lt;= 18)) ifTrue: [^false.].				].				nextNextIndex := ((board at: i) at: j - 1) getSubelement imageIndex.				"Ladder or Blank next to Box / Bludger"				((nextNextIndex = 1) | (nextNextIndex = 4)) ifTrue: [^true].				^false			].		].		nextIndex := ((board at: i) at: j) getSubelement imageIndex.		"Ladder or Blank or Broom or Scroll or Portkey"		((nextIndex = 1) | (nextIndex = 4) | (nextIndex = 19) | (nextIndex = 20) | ((nextIndex &gt;= 21) &amp; (nextIndex &lt;= 26)) | ((nextIndex &gt;= 31) &amp; (nextIndex &lt;= 33))) ifTrue: [^true].	].	"Right check"	(aDirection = 4) ifTrue: [		i := x.		j := y + 1.		anElement := ((board at: i) at: j) getElement.		anElement ifNotNil: [ 			"Box / Bludger"			((anElement imageIndex &gt;= 5) &amp; (anElement imageIndex &lt;= 18)) ifTrue: [				anElement := ((board at: i) at: j + 1) getElement.				anElement ifNotNil: [ 					"Box / Bludger next to the Box / Bludger"					((anElement imageIndex &gt;= 5) &amp; (anElement imageIndex &lt;= 18)) ifTrue: [^false.].				].				nextNextIndex := ((board at: i) at: j + 1) getSubelement imageIndex.				"Ladder or Blank next to Box / Bludger"				((nextNextIndex = 1) | (nextNextIndex = 4)) ifTrue: [^true].				^false			].		].		nextIndex := ((board at: i) at: j) getSubelement imageIndex.		"Ladder or Blank or Broom or Scroll or Portkey"		((nextIndex = 1) | (nextIndex = 4) | (nextIndex = 19) | (nextIndex = 20) | ((nextIndex &gt;= 21) &amp; (nextIndex &lt;= 26)) | ((nextIndex &gt;= 31) &amp; (nextIndex &lt;= 33))) ifTrue: [^true].	].	^false</body>

<body package="SokobanVexed" selector="gravityCheck">gravityCheck	"Check for the application of gravity."	| x y nextIndex anElement currIndex |	"Return false if Player has Broom"	imageIndex = 2 ifFalse: [^false.].	"Get element position"		x := position x.	y := position y.	"Exist element below"	anElement := ((board at: x + 1) at: y) getElement.	anElement ifNotNil: [^false].	"Player is currently at Blank or Scroll or Portkey"	currIndex := ((board at: x) at: y) getSubelement imageIndex.	nextIndex := ((board at: x + 1) at: y) getSubelement imageIndex.	((currIndex = 1) | ((currIndex &gt;= 21) &amp; (currIndex &lt;= 26)) | ((currIndex &gt;= 31) &amp; (currIndex &lt;= 33))) ifTrue:[		"Below is Blank or Broom or Scroll or Portkey"		((nextIndex = 1) | (nextIndex = 20) | ((nextIndex &gt;= 21) &amp; (nextIndex &lt;= 26)) | ((nextIndex &gt;= 31) &amp; (nextIndex &lt;= 33))) ifTrue:[^true.].	].	^false.</body>

<body package="SokobanVexed" selector="behave">behave		(self gravityCheck) ifTrue: [		"Fall"		self move: 2.	]</body>

<body package="SokobanVexed" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Grid class</class-id> <category>instance creation</category>

<body package="SokobanVexed" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Grid</class-id> <category>accessing</category>

<body package="SokobanVexed" selector="subelement">subelement	^subelement</body>

<body package="SokobanVexed" selector="element">element	^element</body>
</methods>

<methods>
<class-id>Grid</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="setElement:">setElement: anElement	"Set the element inside this grid."	element := anElement.	self changed.</body>

<body package="SokobanVexed" selector="setSubelement:">setSubelement: anElement	"Set the subelement inside this grid."	subelement := anElement.	self changed.</body>

<body package="SokobanVexed" selector="getElement">getElement	^element</body>

<body package="SokobanVexed" selector="getSubelement">getSubelement	^subelement</body>
</methods>


<methods>
<class-id>Broom</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Brick</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Bludger</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="getColor">getColor	^color.</body>

<body package="SokobanVexed" selector="magneticCheck">magneticCheck	"Return value:	0 if the bludger is not affected by magnetic effect	1 if the bludger is affected by magnetic effect and is stable	2 if the bludger is affected by magnetic effect but is not stable"		| x y height width blue green red anElement anIndex i |	x := position x.	y := position y.	height := board size.	width := (board at:1) size.	blue := 0.	green := 0.	red := 0.	"Find the closed scrolls"	1 to: height do: [:n |		1 to: width do: [:m |			anElement := ((board at: n) at: m) getSubelement.			anIndex := anElement imageIndex.						"Record the closed scrolls"			anIndex = 24 ifTrue: [blue := 1.].			anIndex = 25 ifTrue: [green := 1.].			anIndex = 26 ifTrue: [red := 1.].		].	].	"Find Up for the first appeared Magnet"	i := 1.	anIndex := 1.	[((x - i) &gt;= 1) &amp; (anIndex = 1)] whileTrue:[			anElement := ((board at: (x - i)) at: y) getSubelement.			anIndex := anElement imageIndex.			anElement := ((board at: (x - i)) at: y) getElement.			anElement ifNotNil:[				anIndex := anElement imageIndex.			].						"Return 1 if Bludger is attached to Magnet already"			(i = 1) ifTrue: [				(((anIndex = 27) &amp; (blue = 1)) | ((anIndex = 28) &amp; (green = 1)) | ((anIndex = 29) &amp; (red = 1))) ifTrue: [^1.].			].			"Match Magnet and Scroll"			(((anIndex = 27) &amp; (blue = 1)) | ((anIndex = 28) &amp; (green = 1)) | ((anIndex = 29) &amp; (red = 1))) ifTrue: [^2.].			i := i + 1.	].	^0.</body>

<body package="SokobanVexed" selector="rollingCheck">rollingCheck	"Return true if both self and the bludger below self has Blank in left or right"		| x y anIndex anElement |	x := position x.	y := position y.	"Check below"	anIndex := ((board at: (x + 1)) at: y) getSubelement imageIndex.	anElement := ((board at: (x + 1)) at: y) getElement.	anElement ifNotNil: [		anIndex := anElement imageIndex.	].	"No Bludger below"	((anIndex &lt; 12) | (anIndex &gt; 18)) ifTrue: [^false] ifFalse:[		"If the Bludger below has rolling effect, this Bludger has no effect."		(anElement rollingCheck) ifTrue: [^false].	].	"Check left"	anIndex := ((board at: x) at: (y - 1)) getSubelement imageIndex.	anElement := ((board at: x) at: (y - 1)) getElement.	anElement ifNotNil: [		anIndex := anElement imageIndex.	].	"Left is empty"	anIndex = 1 ifTrue: [		"Check left down"		anIndex := ((board at: (x + 1)) at: (y - 1)) getSubelement imageIndex.		anElement := ((board at: (x + 1)) at: (y - 1)) getElement.		anElement ifNotNil: [			anIndex := anElement imageIndex.		].				"Left down is also empty"		anIndex = 1 ifTrue: [^true].	].	"Check right"	anIndex := ((board at: x) at: (y + 1)) getSubelement imageIndex.	anElement := ((board at: x) at: (y + 1)) getElement.	anElement ifNotNil: [		anIndex := anElement imageIndex.	].	"Right is empty"	anIndex = 1 ifTrue: [		"Check right down"		anIndex := ((board at: (x + 1)) at: (y + 1)) getSubelement imageIndex.		anElement := ((board at: (x + 1)) at: (y + 1)) getElement.		anElement ifNotNil: [			anIndex := anElement imageIndex.		].				"Right down is also empty"		anIndex = 1 ifTrue: [^true].	].	^false.</body>

<body package="SokobanVexed" selector="setColor:">setColor: aColor	"Set the color code to color."	color := aColor.</body>

<body package="SokobanVexed" selector="gravityCheck">gravityCheck	"Check for the application of gravity."	| x y nextIndex anElement |	"Cancel gravity when magnetic effect happens"	(self magneticCheck) = 1 ifTrue: [^false].	"Get element position"		x := position x.	y := position y.	"Exist element below"	anElement := ((board at: x + 1) at: y) getElement.	anElement ifNotNil: [^false].	"Blank or Ladder below"	nextIndex := ((board at: x + 1) at: y) getSubelement imageIndex.	((nextIndex = 1) | (nextIndex = 4)) ifTrue: [^true.].	^false.</body>

<body package="SokobanVexed" selector="magnetic">magnetic	"Apply magnetic effect"	| x y height width blue green red anElement anIndex i d |	x := position x.	y := position y.	height := board size.	width := (board at:1) size.	blue := 0.	green := 0.	red := 0.	"Find the closed scrolls"	1 to: height do: [:n |		1 to: width do: [:m |			anElement := ((board at: n) at: m) getSubelement.			anIndex := anElement imageIndex.						"Record the closed scrolls"			anIndex = 24 ifTrue: [blue := 1.].			anIndex = 25 ifTrue: [green := 1.].			anIndex = 26 ifTrue: [red := 1.].		].	].	"Find Up for the first appeared Magnet"	i := 2.	anIndex := 1.	[((x - i) &gt;= 1) &amp; (anIndex = 1)] whileTrue:[			anElement := ((board at: (x - i)) at: y) getSubelement.			anIndex := anElement imageIndex.			anElement := ((board at: (x - i)) at: y) getElement.			anElement ifNotNil:[				anIndex := anElement imageIndex.			].						"Match Magnet and Scroll"			(((anIndex = 27) &amp; (blue = 1)) | ((anIndex = 28) &amp; (green = 1)) | ((anIndex = 29) &amp; (red = 1))) ifTrue: [				1 to: (i - 1) do: [ :j |					"Move towards Magnet"					self move: 1.					d := Delay forSeconds:0.2.					d wait.				].			].			i := i + 1.	].</body>

<body package="SokobanVexed" selector="rolling">rolling	| x y anIndex anElement d |	x := position x.	y := position y.	d := Delay forSeconds:0.2.	"Check left"	anIndex := ((board at: x) at: (y - 1)) getSubelement imageIndex.	anElement := ((board at: x) at: (y - 1)) getElement.	anElement ifNotNil: [		anIndex := anElement imageIndex.	].	"Left is empty"	anIndex = 1 ifTrue: [		"Check left down"		anIndex := ((board at: (x + 1)) at: (y - 1)) getSubelement imageIndex.		anElement := ((board at: (x + 1)) at: (y - 1)) getElement.		anElement ifNotNil: [			anIndex := anElement imageIndex.		].				"Left down is also empty"		anIndex = 1 ifTrue: [			"Move to left down"			self move: 3.			d wait.			self move: 2.			d wait.		].		"Check kill Harry condition"		anElement := ((board at: (x + 2)) at: (y - 1)) getElement.		anElement ifNotNil: [			((anElement imageIndex = 2) | (anElement imageIndex &gt;= 34)) ifTrue: [				((board at: (x + 2)) at: (y - 1)) setElement: nil.			].		].	].	"Check right"	anIndex := ((board at: x) at: (y + 1)) getSubelement imageIndex.	anElement := ((board at: x) at: (y + 1)) getElement.	anElement ifNotNil: [		anIndex := anElement imageIndex.	].	"Right is empty"	anIndex = 1 ifTrue: [		"Check right down"		anIndex := ((board at: (x + 1)) at: (y + 1)) getSubelement imageIndex.		anElement := ((board at: (x + 1)) at: (y + 1)) getElement.		anElement ifNotNil: [			anIndex := anElement imageIndex.		].				"Right down is also empty"		anIndex = 1 ifTrue: [			"Move to right down"			self move: 4.			d wait.			self move: 2.			d wait.				"Check kill Harry condition"			anElement := ((board at: (x + 2)) at: (y + 1)) getElement.			anElement ifNotNil: [				((anElement imageIndex = 2) | (anElement imageIndex &gt;= 34)) ifTrue: [					((board at: (x + 2)) at: (y + 1)) setElement: nil.				].			].		].	].</body>

<body package="SokobanVexed" selector="vanish">vanish	| x y anElement |		"Check neighbor element"	x := position x.	y := position y.	"Vanish itself"	((board at: x) at: y) setElement: nil.	"Up"	anElement := ((board at: x - 1) at: y) getElement.	anElement ifNotNil:[		(imageIndex = (anElement imageIndex)) ifTrue: [			"Vanish the neighbor element"			anElement vanish.		].	].	"Down"	anElement := ((board at: x + 1) at: y) getElement.	anElement ifNotNil:[		(imageIndex = (anElement imageIndex)) ifTrue: [			"Vanish the neighbor element"			anElement vanish.		].	].	"Left"	anElement := ((board at: x) at: y - 1) getElement.	anElement ifNotNil:[		(imageIndex = (anElement imageIndex)) ifTrue: [			"Vanish the neighbor element"			anElement vanish.		].	].	"Right"	anElement := ((board at: x) at: y + 1) getElement.	anElement ifNotNil:[		(imageIndex = (anElement imageIndex)) ifTrue: [			"Vanish the neighbor element"			anElement vanish.		].	].</body>

<body package="SokobanVexed" selector="vanishCheck">vanishCheck	"Check the condition for vanish"	| x y anElement |		"Check neighbor element"	x := position x.	y := position y.	"Up"	anElement := ((board at: x - 1) at: y) getElement.	anElement ifNotNil:[		(imageIndex = (anElement imageIndex)) ifTrue: [^true.].	].	"Down"	anElement := ((board at: x + 1) at: y) getElement.	anElement ifNotNil:[		(imageIndex = (anElement imageIndex)) ifTrue: [^true.].	].	"Left"	anElement := ((board at: x) at: y - 1) getElement.	anElement ifNotNil:[		(imageIndex = (anElement imageIndex)) ifTrue: [^true.].	].	"Right"	anElement := ((board at: x) at: y + 1) getElement.	anElement ifNotNil:[		(imageIndex = (anElement imageIndex)) ifTrue: [^true.].	].	^false.</body>

<body package="SokobanVexed" selector="behave">behave	(self magneticCheck) = 2 ifTrue:[		"Move to Magnet"		self magnetic.	] ifFalse:[		(self gravityCheck) ifTrue: [			"Fall"			self move: 2.		] ifFalse: [			(self rollingCheck) ifTrue:[				"Roll"				self rolling.			] ifFalse: [				(self vanishCheck) ifTrue: [					"Vanish"					self vanish.				].			].		].	].</body>

<body package="SokobanVexed" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Blank</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Ladder</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>



</st-source>
