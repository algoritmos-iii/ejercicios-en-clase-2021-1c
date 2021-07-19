!classDefinition: #GameOfLifeView category: 'GameOfLife'!
ImageMorph subclass: #GameOfLifeView
	instanceVariableNames: 'game'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'GameOfLife'!

!GameOfLifeView methodsFor: 'initialization' stamp: 'LL 11/28/2020 20:50:57'!
initializeFor: aGameOfLife

	game := aGameOfLife.
	self image: (Form extent: (game boardWitdh @ game boardHeight) * 5 depth: 2).! !


!GameOfLifeView methodsFor: 'openinig' stamp: 'HAW 6/11/2018 15:26:19'!
open

	self showBoard.
	self openInWorld.
	self startSteppingStepTime: 500! !


!GameOfLifeView methodsFor: 'showing' stamp: 'HAW 6/11/2018 15:18:42'!
showBoard

	game cellsDo: [ :aPoint | (game isAliveAt: aPoint)
		ifTrue: [ self form fillBlack: (aPoint*5 extent: 5@5) ]
		ifFalse: [ self form fillWhite: (aPoint*5 extent: 5@5) ]].
! !

!GameOfLifeView methodsFor: 'showing' stamp: 'HAW 6/11/2018 15:18:36'!
step

	game nextGeneration.
	self showBoard.
	self redrawNeeded.

! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GameOfLifeView class' category: 'GameOfLife'!
GameOfLifeView class
	instanceVariableNames: ''!

!GameOfLifeView class methodsFor: 'examples' stamp: 'LL 11/28/2020 20:48:33'!
blinker

	^GameOfLife withLiveCells: { 4@2. 4@3. 4@4. 3@3. 4@3. 5@3 } inBetween: 10 and: 10! !

!GameOfLifeView class methodsFor: 'examples' stamp: 'LL 11/28/2020 20:48:33'!
toad

	^GameOfLife withLiveCells: { 2@4. 3@4. 4@4. 3@3. 4@3. 5@3 } inBetween: 10 and: 10
	
	! !


!GameOfLifeView class methodsFor: 'open examples' stamp: 'HAW 6/11/2018 15:20:12'!
openBlinker

	^self openFor: self blinker! !

!GameOfLifeView class methodsFor: 'open examples' stamp: 'LL 11/28/2020 20:58:14'!
openRandomOfWidth: aBoardWidth height: aBoardHeight  

	"
	self openRandomOfWidth: 100 height: 100
	self openRandomOfWidth: 50 height: 50
	"
	
	^self openFor: (self randomOfWidth: aBoardWidth height: aBoardHeight)
	
	! !

!GameOfLifeView class methodsFor: 'open examples' stamp: 'HAW 6/12/2018 08:05:40'!
openToad

	^self openFor: self toad! !


!GameOfLifeView class methodsFor: 'instance creation' stamp: 'HAW 6/11/2018 15:10:57'!
for: aGameOfLife

	^self new initializeFor: aGameOfLife! !

!GameOfLifeView class methodsFor: 'instance creation' stamp: 'HAW 6/11/2018 15:19:13'!
openFor: aGameOfLife

	^(self for: aGameOfLife) open! !

!GameOfLifeView class methodsFor: 'instance creation' stamp: 'LL 11/28/2020 20:57:04'!
randomOfWidth: aWidth height: aHeight 

	| liveCells random |
	
	random := Random new.
	liveCells := OrderedCollection new.
	
	1 to: aWidth do: [ :x | 
		1 to: aHeight do: [ :y | random next >= 0.5 ifTrue: [ liveCells add: x@y ] ] ].
	
	^GameOfLife withLiveCells: liveCells inBetween: aWidth and: aHeight
	
	
	
! !


!classDefinition: #GameOfLifeTest category: 'GameOfLife'!
TestCase subclass: #GameOfLifeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'GameOfLife'!

!GameOfLifeTest methodsFor: 'tests' stamp: 'LL 11/28/2020 20:48:49'!
test01AliveCellWithLessThanTwoAliveNeighDies

	|gameOfLife |
	
	gameOfLife := GameOfLife withLiveCells: { 1@1 } inBetween: 3 and: 3.
	gameOfLife nextGeneration.
	
	self assert: (gameOfLife isDeadAt: 1@1) ! !

!GameOfLifeTest methodsFor: 'tests' stamp: 'LL 11/28/2020 20:48:54'!
test02AliveCellWithTwoAliveNeighStaysAlive

	|gameOfLife |
	
	gameOfLife := GameOfLife withLiveCells: { 1@1. 2@0. 1@0. } inBetween: 3 and: 3.
	gameOfLife nextGeneration.
	
	self deny: (gameOfLife isDeadAt: 1@1) ! !

!GameOfLifeTest methodsFor: 'tests' stamp: 'LL 11/28/2020 20:48:57'!
test03AliveCellWithThreeAliveNeighStaysAlive

	|gameOfLife |
	
	gameOfLife := GameOfLife withLiveCells: { 1@1. 2@0. 1@0. 1@2. } inBetween: 3 and: 3.
	gameOfLife nextGeneration.
	
	self deny: (gameOfLife isDeadAt: 1@1) ! !

!GameOfLifeTest methodsFor: 'tests' stamp: 'LL 11/28/2020 20:48:33'!
test04AliveCellWithMoreThanThreeAliveNeighDies

	|gameOfLife |
	
	gameOfLife := GameOfLife withLiveCells: { 1@1. 2@0. 1@0. 1@2. 0@1 } inBetween: 3 and: 3.
	gameOfLife nextGeneration.
	
	self assert: (gameOfLife isDeadAt: 1@1) ! !

!GameOfLifeTest methodsFor: 'tests' stamp: 'LL 11/28/2020 20:48:33'!
test05DeadCellWithThreeAliveNeighResurects

	|gameOfLife |
	
	gameOfLife := GameOfLife withLiveCells: { 2@0. 1@0. 0@0 } inBetween: 3 and: 3.
	gameOfLife nextGeneration.
	
	self deny: (gameOfLife isDeadAt: 1@1) ! !

!GameOfLifeTest methodsFor: 'tests' stamp: 'LL 11/28/2020 20:48:33'!
test06CannotCreateCellOutsideBounds

	self 
		should: [ GameOfLife withLiveCells: { 2@0. 1@0. 1@4 } inBetween: 3 and: 3 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: 'celda fuera de rango' ]! !


!classDefinition: #GameOfLife category: 'GameOfLife'!
Object subclass: #GameOfLife
	instanceVariableNames: 'aliveCells width height'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'GameOfLife'!

!GameOfLife methodsFor: 'initialization' stamp: 'LL 11/28/2020 20:48:04'!
initializeWith: aCollectionOfAliveCells width: aWidth height: aHeight 

	width := aWidth.
	height := aHeight.
	aliveCells := aCollectionOfAliveCells asSet.
! !


!GameOfLife methodsFor: 'next generation' stamp: 'HAW 9/8/2017 14:15:27'!
nextGeneration
	
	aliveCells := self cellsToSurviveOnNextGeneration union: self cellsToResurectOnNextGeneration! !


!GameOfLife methodsFor: 'testing' stamp: 'HAW 5/10/2017 10:28:24'!
isDeadAt: aCell

	^(aliveCells includes: aCell) not! !


!GameOfLife methodsFor: 'private' stamp: 'LL 11/28/2020 20:46:25'!
cellsDo: aBlock
	
	0 to: width do: [ :x | 0 to: height do: [ :y | aBlock value: x@y ] ]! !

!GameOfLife methodsFor: 'private' stamp: 'HAW 6/12/2018 14:06:46'!
cellsToResurectOnNextGeneration

	| cellsToResurect |
	
	cellsToResurect := Set new.
	self deadCellsDo: [ :aDeadCell | (self hasToResurrect: aDeadCell) ifTrue: [ cellsToResurect add: aDeadCell]].
	
	^cellsToResurect ! !

!GameOfLife methodsFor: 'private' stamp: 'HAW 9/8/2017 14:14:50'!
cellsToSurviveOnNextGeneration
		
	^aliveCells select: [ :aCell | self hasToSurvive: aCell ]! !

!GameOfLife methodsFor: 'private' stamp: 'LL 11/28/2020 20:27:18'!
deadCellsDo: aBlock
	
	self cellsDo: [ :aPosition | (self isDeadAt: aPosition) ifTrue: [ aBlock value: aPosition ] ].
! !

!GameOfLife methodsFor: 'private' stamp: 'HAW 5/11/2017 21:11:17'!
hasToResurrect: aCell

	^(self numberOfAliveNeighboursOf: aCell) = 3! !

!GameOfLife methodsFor: 'private' stamp: 'LL 11/28/2020 20:33:23'!
hasToSurvive: aCell
	
	| numberOfAliveNeighbours|
	
	numberOfAliveNeighbours := self numberOfAliveNeighboursOf: aCell.
	
	^numberOfAliveNeighbours = 2 or: [ numberOfAliveNeighbours = 3 ]! !

!GameOfLife methodsFor: 'private' stamp: 'HAW 5/10/2017 10:29:35'!
numberOfAliveNeighboursOf: aCell

	^(aCell eightNeighbors intersection: aliveCells) size! !


!GameOfLife methodsFor: 'for view' stamp: 'LL 11/28/2020 20:50:36'!
boardHeight

	^height! !

!GameOfLife methodsFor: 'for view' stamp: 'LL 11/28/2020 20:50:27'!
boardWitdh

	^width! !

!GameOfLife methodsFor: 'for view' stamp: 'LL 11/28/2020 20:20:35'!
isAliveAt: aCell

	^(self isDeadAt: aCell) not! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GameOfLife class' category: 'GameOfLife'!
GameOfLife class
	instanceVariableNames: ''!

!GameOfLife class methodsFor: 'as yet unclassified' stamp: 'LL 11/28/2020 20:34:43'!
assert: aCollectionOfAliveCells areBetween: x and: y

	^ (aCollectionOfAliveCells allSatisfy: [:aCell |
		(aCell x between: 0 and: x) and: [ aCell y between: 0 and: y]]) ifFalse: [ self error: 'celda fuera de rango' ]! !

!GameOfLife class methodsFor: 'as yet unclassified' stamp: 'LL 11/28/2020 20:48:33'!
withLiveCells: aCollectionOfAliveCells inBetween: aWidth and: aHeight  

	self assert: aCollectionOfAliveCells areBetween: aWidth and: aHeight.
	
	^self new initializeWith: aCollectionOfAliveCells width: aWidth height: aHeight! !
