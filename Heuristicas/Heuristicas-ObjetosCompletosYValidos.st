!classDefinition: #TimeDifferenceTest category: 'Heuristicas-ObjetosCompletosYValidos'!
TestCase subclass: #TimeDifferenceTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Heuristicas-ObjetosCompletosYValidos'!

!TimeDifferenceTest methodsFor: 'as yet unclassified' stamp: 'LL 6/3/2021 20:07:45'!
test01

	| lunchTime classTime |
	lunchTime := Algo3Time hour: 13 minutes: 0 seconds: 0 timezone: ((TimeZone offset: -3 name: 'Buenos Aires' abbreviation: 'BA')).
	
	classTime := Algo3Time hour: 19 minutes: 0 seconds: 0 timezone: ((TimeZone offset: -3 name: 'Buenos Aires' abbreviation: 'BA')).
	
	self assert: (classTime hour - lunchTime hour) equals: 6
	
	
	! !

!TimeDifferenceTest methodsFor: 'as yet unclassified' stamp: 'LL 6/3/2021 20:16:14'!
test02

	| lunchTime classTime |
	lunchTime := Algo3Time hour: 13 minutes: 0 seconds: 0 timezone: (TimeZone offset: 1 name: 'Dublin' abbreviation: 'DB').
	
	classTime := Algo3Time hour: 19 minutes: 0 seconds: 0 timezone: (TimeZone offset: -3 name: 'Buenos Aires' abbreviation: 'BA').
	
	self assert: (classTime hour - lunchTime hour) equals: 10
	
	
	! !

!TimeDifferenceTest methodsFor: 'as yet unclassified' stamp: 'LL 6/3/2021 20:23:20'!
test03

	self should: [ Algo3Time hour: 25 minutes: 0 seconds: 0 timezone: (TimeZone offset: -3 name: 'Buenos Aires' abbreviation: 'BA') ] 
		raise: Error 
		withExceptionDo: [ :anException | 
			anException messageText = Algo3Time invalidHourErrorMessage.
		]
	
	
	! !

!TimeDifferenceTest methodsFor: 'as yet unclassified' stamp: 'LL 6/3/2021 20:28:48'!
test04

	self should: [ Algo3Time hour: -1 minutes: 0 seconds: 0 timezone: (TimeZone offset: -3 name: 'Buenos Aires' abbreviation: 'BA') ] 
		raise: Error 
		withExceptionDo: [ :anException | 
			anException messageText = Algo3Time invalidHourErrorMessage.
		]
	
	
	! !


!classDefinition: #Algo3Time category: 'Heuristicas-ObjetosCompletosYValidos'!
Object subclass: #Algo3Time
	instanceVariableNames: 'hour minutes seconds numberOfHour numberOfMinutes numberOfSeconds timezone'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Heuristicas-ObjetosCompletosYValidos'!

!Algo3Time methodsFor: 'as yet unclassified' stamp: 'LL 6/3/2021 20:16:27'!
hour

	^hour - timezone offset! !

!Algo3Time methodsFor: 'as yet unclassified' stamp: 'LL 11/16/2020 21:37:52'!
minutes

	^minutes! !

!Algo3Time methodsFor: 'as yet unclassified' stamp: 'LL 11/16/2020 21:37:46'!
seconds

	^seconds! !


!Algo3Time methodsFor: 'initialization' stamp: 'LL 6/3/2021 20:17:24'!
initializeHour: aNumberOfHour minutes: aNumberOfMinutes seconds: aNumberOfSeconds timezone: aTimezone  

	hour := aNumberOfHour.
	minutes := aNumberOfMinutes.
	seconds := aNumberOfSeconds.
	timezone := aTimezone! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Algo3Time class' category: 'Heuristicas-ObjetosCompletosYValidos'!
Algo3Time class
	instanceVariableNames: ''!

!Algo3Time class methodsFor: 'instance creation' stamp: 'LL 6/3/2021 20:30:58'!
assertHourIsValid: aNumberOfHour

	^ (aNumberOfHour between: 0 and: 23) ifFalse: [ self error: self invalidHourErrorMessage ]! !

!Algo3Time class methodsFor: 'instance creation' stamp: 'LL 6/3/2021 20:30:58'!
hour: aNumberOfHour minutes: aNumberOfMinutes seconds: aNumberOfSeconds timezone: aTimezone  
	
	self assertHourIsValid: aNumberOfHour.
	
	^self new initializeHour: aNumberOfHour minutes: aNumberOfMinutes seconds: aNumberOfSeconds timezone: aTimezone! !


!Algo3Time class methodsFor: 'as yet unclassified' stamp: 'LL 6/3/2021 20:23:43'!
invalidHourErrorMessage

	^'The hour is invalid'! !
