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

<body package="SokobanVexed" selector="new">new
</methods>


<methods>
<class-id>Element</class-id> <category>accessing</category>

<body package="SokobanVexed" selector="imageIndex">imageIndex

<body package="SokobanVexed" selector="position">position
</methods>

<methods>
<class-id>Element</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="initialize">initialize

<body package="SokobanVexed" selector="initialize:and:">initialize: aPoint and: anIndex
</methods>


<methods>
<class-id>ElementWithBehavior class</class-id> <category>instance creation</category>

<body package="SokobanVexed" selector="new">new
</methods>


<methods>
<class-id>ElementWithBehavior</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="canMove:">canMove: aDirection

<body package="SokobanVexed" selector="behave">behave</body>

<body package="SokobanVexed" selector="gravityCheck">gravityCheck

<body package="SokobanVexed" selector="initialize:">initialize: aBoard

<body package="SokobanVexed" selector="move:">move: aDirection
</methods>

<methods>
<class-id>ElementWithBehavior</class-id> <category>accessing</category>

<body package="SokobanVexed" selector="board">board
</methods>


<methods>
<class-id>Box</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="magnetic">magnetic

<body package="SokobanVexed" selector="vanishCheck">vanishCheck

<body package="SokobanVexed" selector="behave">behave

<body package="SokobanVexed" selector="initialize">initialize

<body package="SokobanVexed" selector="getColor">getColor

<body package="SokobanVexed" selector="magneticCheck">magneticCheck

<body package="SokobanVexed" selector="setColor:">setColor: aColor

<body package="SokobanVexed" selector="vanish">vanish

<body package="SokobanVexed" selector="gravityCheck">gravityCheck
</methods>

<methods>
<class-id>Box</class-id> <category>accessing</category>

<body package="SokobanVexed" selector="color">color
</methods>


<methods>
<class-id>ElementWOBehavior</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="initialize">initialize
</methods>


<methods>
<class-id>Rock</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="initialize">initialize
</methods>


<methods>
<class-id>Scroll</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="setState:">setState: aState

<body package="SokobanVexed" selector="initialize">initialize

<body package="SokobanVexed" selector="getState">getState

<body package="SokobanVexed" selector="setColor:">setColor: aColor

<body package="SokobanVexed" selector="getColor">getColor
</methods>


<methods>
<class-id>SokobanVexedView</class-id> <category>updating</category>

<body package="SokobanVexed" selector="update:">update: anAspect
</methods>

<methods>
<class-id>SokobanVexedView</class-id> <category>accessing</category>

<body package="SokobanVexed" selector="model:">model: aSV
</methods>

<methods>
<class-id>SokobanVexedView</class-id> <category>controller accessing</category>

<body package="SokobanVexed" selector="defaultControllerClass">defaultControllerClass
</methods>


<methods>
<class-id>Magnet</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="initialize">initialize

<body package="SokobanVexed" selector="setColor:">setColor: aColor

<body package="SokobanVexed" selector="getColor">getColor
</methods>


<methods>
<class-id>GridView class</class-id> <category>instance creation</category>

<body package="SokobanVexed" selector="model:">model: aGrid
</methods>


<methods>
<class-id>GridView</class-id> <category>updating</category>

<body package="SokobanVexed" selector="update:">update: anAspect
</methods>

<methods>
<class-id>GridView</class-id> <category>accessing</category>

<body package="SokobanVexed" selector="images">images

<body package="SokobanVexed" selector="model:">model: aGrid
</methods>

<methods>
<class-id>GridView</class-id> <category>controller accessing</category>

<body package="SokobanVexed" selector="defaultControllerClass">defaultControllerClass
</methods>

<methods>
<class-id>GridView</class-id> <category>displaying</category>

<body package="SokobanVexed" selector="displayOn:">displayOn: aGraphicsContext
</methods>


<methods>
<class-id>Portkey</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="getPairPosition">getPairPosition

<body package="SokobanVexed" selector="initialize">initialize

<body package="SokobanVexed" selector="setPairPosition:">setPairPosition: aPoint
</methods>


<methods>
<class-id>SokobanVexed class</class-id> <category>instance creation</category>

<body package="SokobanVexed" selector="new">new
</methods>


<methods>
<class-id>SokobanVexed</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="play:">play: aDirection

<body package="SokobanVexed" selector="initialize:">initialize: aLevel

<body package="SokobanVexed" selector="autoplay">autoplay</body>

<body package="SokobanVexed" selector="restartGame">restartGame</body>

<body package="SokobanVexed" selector="nextLvl">nextLvl</body>

<body package="SokobanVexed" selector="stateCheck">stateCheck

<body package="SokobanVexed" selector="loadControlSequence">loadControlSequence</body>
</methods>

<methods>
<class-id>SokobanVexed</class-id> <category>accessing</category>

<body package="SokobanVexed" selector="height">height

<body package="SokobanVexed" selector="width">width

<body package="SokobanVexed" selector="board">board

<body package="SokobanVexed" selector="currentLevel">currentLevel

<body package="SokobanVexed" selector="sequence">sequence
</methods>


<methods>
<class-id>SokobanVexedController</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="buttonFn:">buttonFn: aCase</body>

<body package="SokobanVexed" selector="clickAt:">clickAt: aPoint

<body package="SokobanVexed" selector="getFocus">getFocus
</methods>

<methods>
<class-id>SokobanVexedController</class-id> <category>events</category>

<body package="SokobanVexed" selector="keyPressedEvent:">keyPressedEvent: event
</methods>


<methods>
<class-id>Player</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="move:">move: aDirection

<body package="SokobanVexed" selector="canMove:">canMove: aDirection

<body package="SokobanVexed" selector="gravityCheck">gravityCheck

<body package="SokobanVexed" selector="behave">behave

<body package="SokobanVexed" selector="initialize">initialize
</methods>


<methods>
<class-id>Grid class</class-id> <category>instance creation</category>

<body package="SokobanVexed" selector="new">new
</methods>


<methods>
<class-id>Grid</class-id> <category>accessing</category>

<body package="SokobanVexed" selector="subelement">subelement

<body package="SokobanVexed" selector="element">element
</methods>

<methods>
<class-id>Grid</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="setElement:">setElement: anElement

<body package="SokobanVexed" selector="setSubelement:">setSubelement: anElement

<body package="SokobanVexed" selector="getElement">getElement

<body package="SokobanVexed" selector="getSubelement">getSubelement
</methods>


<methods>
<class-id>Broom</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="initialize">initialize
</methods>


<methods>
<class-id>Brick</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="initialize">initialize
</methods>


<methods>
<class-id>Bludger</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="getColor">getColor

<body package="SokobanVexed" selector="magneticCheck">magneticCheck

<body package="SokobanVexed" selector="rollingCheck">rollingCheck

<body package="SokobanVexed" selector="setColor:">setColor: aColor

<body package="SokobanVexed" selector="gravityCheck">gravityCheck

<body package="SokobanVexed" selector="magnetic">magnetic

<body package="SokobanVexed" selector="rolling">rolling

<body package="SokobanVexed" selector="vanish">vanish

<body package="SokobanVexed" selector="vanishCheck">vanishCheck

<body package="SokobanVexed" selector="behave">behave

<body package="SokobanVexed" selector="initialize">initialize
</methods>


<methods>
<class-id>Blank</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="initialize">initialize
</methods>


<methods>
<class-id>Ladder</class-id> <category>initialize-release</category>

<body package="SokobanVexed" selector="initialize">initialize
</methods>



</st-source>