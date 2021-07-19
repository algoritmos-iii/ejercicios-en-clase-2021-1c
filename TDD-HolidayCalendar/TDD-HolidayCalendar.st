!classDefinition: #TestHolidayCalendar category: 'TDD-HolidayCalendar'!
TestCase subclass: #TestHolidayCalendar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TDD-HolidayCalendar'!

!TestHolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 20:46:09'!
test01AnyWeekDayCanBeAHoliday

	| holidayCalendar aSunday |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (WeekDayHolidayRule for: Sunday).

	aSunday := June/13/2021.
	self assert: (holidayCalendar isHoliday: aSunday)! !

!TestHolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 19:38:25'!
test02UnmarkedDayIsNotAHoliday

	| holidayCalendar aMonday |
	holidayCalendar := HolidayCalendar new.

	aMonday := June/14/2021.
	self deny: (holidayCalendar isHoliday: aMonday)! !

!TestHolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 20:47:30'!
test03ManyWeekDaysCanBeMarkedAsHolidays

	| holidayCalendar aSaturday aSunday |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (WeekDayHolidayRule for: Saturday).
	holidayCalendar addRule: (WeekDayHolidayRule for: Sunday).

	aSaturday := June/12/2021.
	aSunday := June/13/2021.
	self assert: (holidayCalendar isHoliday: aSaturday).
	self assert: (holidayCalendar isHoliday: aSunday).! !

!TestHolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 20:48:10'!
test04AnyDayOfMonthCanBeAHoliday

	| holidayCalendar aChristmas |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (DayOfMonthHolidayRule for: December/25).

	aChristmas := December/25/2021.
	self assert: (holidayCalendar isHoliday: aChristmas).! !

!TestHolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 20:48:25'!
test05ManyDaysOfMonthCanBeHolidays

	| holidayCalendar aChristmas aNewYear |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (DayOfMonthHolidayRule for: December/25).
	holidayCalendar addRule: (DayOfMonthHolidayRule for: January/1).

	aChristmas := December/25/2021.
	aNewYear := January/1/2022.
	self assert: (holidayCalendar isHoliday: aChristmas).
	self assert: (holidayCalendar isHoliday: aNewYear).! !

!TestHolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 20:48:50'!
test06AnyDateCanBeAHoliday

	| holidayCalendar aHolidayDate |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (DateHolidayRule for: April/12/2012).

	aHolidayDate := April/12/2012.
	self assert: (holidayCalendar isHoliday: aHolidayDate).! !

!TestHolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 20:49:01'!
test07ManyDatesCanBeHolidays

	| holidayCalendar aHolidayDate anotherHolidayDate |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (DateHolidayRule for: April/12/2012).
	holidayCalendar addRule: (DateHolidayRule for: May/23/2012).

	aHolidayDate := April/12/2012.
	anotherHolidayDate := May/23/2012.
	self assert: (holidayCalendar isHoliday: aHolidayDate).
	self assert: (holidayCalendar isHoliday: anotherHolidayDate).! !

!TestHolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 21:45:39'!
test08AHolidayRuleIsValidWithinAnInterval

	| holidayCalendar aMondayInInterval |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (TemporaryHolidayRule of: (WeekDayHolidayRule for: Monday) between: January/1/1990 and: December/31/1999).

	aMondayInInterval := June/22/1992.
	self assert: (holidayCalendar isHoliday: aMondayInInterval).! !

!TestHolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 21:45:15'!
test09AnUnmarkedDayInIntervalIsNotAHoliday

	| holidayCalendar aTuesdayInInterval |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (TemporaryHolidayRule of: (WeekDayHolidayRule for: Monday) between: January/1/1990 and: December/31/1999).

	aTuesdayInInterval := June/23/1992.
	self deny: (holidayCalendar isHoliday: aTuesdayInInterval).! !

!TestHolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 21:47:13'!
test10AHolidayBeforeStartingDateIsNotAHoliday

	| holidayCalendar aMondayBeforeInterval |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (TemporaryHolidayRule of: (WeekDayHolidayRule for: Monday) between: January/1/1990 and: December/31/1999).

	aMondayBeforeInterval := June/26/1989.
	self deny: (holidayCalendar isHoliday: aMondayBeforeInterval).! !

!TestHolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 21:47:04'!
test11AHolidayAfterEndingDateISNotAHoliday

	| holidayCalendar aMondayAfterInterval |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (TemporaryHolidayRule of: (WeekDayHolidayRule for: Monday) between: January/1/1990 and: December/31/1999).

	aMondayAfterInterval := June/26/2000.
	self deny: (holidayCalendar isHoliday: aMondayAfterInterval).! !

!TestHolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 21:47:42'!
test12CannotCreateATemporaryHolidayRuleWithInvalidDates

	self should: [ TemporaryHolidayRule of: (WeekDayHolidayRule for: Monday) between: January/1/2000 and: December/31/1999. ] 
		raise: Error
		withExceptionDo: [ :anException | 
			self assert: anException messageText equals: TemporaryHolidayRule invalidTimeSpanErrorMessage 
		]! !


!classDefinition: #HolidayCalendar category: 'TDD-HolidayCalendar'!
Object subclass: #HolidayCalendar
	instanceVariableNames: 'holidayRules'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TDD-HolidayCalendar'!

!HolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 20:45:36'!
addRule: aHolidayRule
	holidayRules add: aHolidayRule! !

!HolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 20:37:03'!
initialize

	holidayRules := Set new.! !

!HolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 20:32:32'!
isHoliday: aPotentialHoliday 
	^holidayRules anySatisfy: [:aHolidayRule | aHolidayRule isHoliday: aPotentialHoliday ]! !


!classDefinition: #HolidayRule category: 'TDD-HolidayCalendar'!
Object subclass: #HolidayRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TDD-HolidayCalendar'!

!HolidayRule methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 20:14:23'!
isHoliday: aPotentialHoliday

	self subclassResponsibility! !


!classDefinition: #DateHolidayRule category: 'TDD-HolidayCalendar'!
HolidayRule subclass: #DateHolidayRule
	instanceVariableNames: 'dateHoliday'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TDD-HolidayCalendar'!

!DateHolidayRule methodsFor: 'initialization' stamp: 'LL 6/17/2021 20:30:24'!
initializeFor: aDateHoliday 
	
	dateHoliday := aDateHoliday.! !


!DateHolidayRule methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 20:30:52'!
isHoliday: aPotentialHoliday
	^dateHoliday = aPotentialHoliday! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DateHolidayRule class' category: 'TDD-HolidayCalendar'!
DateHolidayRule class
	instanceVariableNames: ''!

!DateHolidayRule class methodsFor: 'instance creation' stamp: 'LL 6/17/2021 20:30:14'!
for: aDateHoliday
	
	^self new initializeFor: aDateHoliday ! !


!classDefinition: #DayOfMonthHolidayRule category: 'TDD-HolidayCalendar'!
HolidayRule subclass: #DayOfMonthHolidayRule
	instanceVariableNames: 'dayOfMonthHoliday'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TDD-HolidayCalendar'!

!DayOfMonthHolidayRule methodsFor: 'initialization' stamp: 'LL 6/17/2021 20:26:35'!
initializeFor: aDayOfMonthHoliday 
	
	dayOfMonthHoliday := aDayOfMonthHoliday.! !


!DayOfMonthHolidayRule methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 20:28:13'!
isHoliday: aPotentialHoliday
	
	^dayOfMonthHoliday = aPotentialHoliday dayOfMonth ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DayOfMonthHolidayRule class' category: 'TDD-HolidayCalendar'!
DayOfMonthHolidayRule class
	instanceVariableNames: ''!

!DayOfMonthHolidayRule class methodsFor: 'instance creation' stamp: 'LL 6/17/2021 20:26:22'!
for: aDayOfMonthHoliday
	
	^self new initializeFor: aDayOfMonthHoliday ! !


!classDefinition: #TemporaryHolidayRule category: 'TDD-HolidayCalendar'!
HolidayRule subclass: #TemporaryHolidayRule
	instanceVariableNames: 'holidayRule from to'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TDD-HolidayCalendar'!

!TemporaryHolidayRule methodsFor: 'initialization' stamp: 'LL 6/17/2021 21:12:19'!
initializeOf: aHolidayRule between: aFrom and: aTo 
	
	holidayRule := aHolidayRule.
	from := aFrom.
	to := aTo.! !


!TemporaryHolidayRule methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 21:49:59'!
isHoliday: aPotentialHoliday
	^(holidayRule isHoliday: aPotentialHoliday) and: [ aPotentialHoliday between: from and: to ]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TemporaryHolidayRule class' category: 'TDD-HolidayCalendar'!
TemporaryHolidayRule class
	instanceVariableNames: ''!

!TemporaryHolidayRule class methodsFor: 'instance creation' stamp: 'LL 6/17/2021 21:35:57'!
of: aHolidayRule between: aFrom and: aTo
	
	aTo < aFrom ifTrue: [ self error: self invalidTimeSpanErrorMessage ].
	
	^self new initializeOf: aHolidayRule between: aFrom and: aTo! !


!TemporaryHolidayRule class methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 21:36:18'!
invalidTimeSpanErrorMessage
	^'Invalid time span'! !


!classDefinition: #WeekDayHolidayRule category: 'TDD-HolidayCalendar'!
HolidayRule subclass: #WeekDayHolidayRule
	instanceVariableNames: 'holidayWeekDay'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TDD-HolidayCalendar'!

!WeekDayHolidayRule methodsFor: 'initialization' stamp: 'LL 6/17/2021 20:17:55'!
initializeFor: aHolidayWeekDay 
	
	holidayWeekDay := aHolidayWeekDay.! !


!WeekDayHolidayRule methodsFor: 'as yet unclassified' stamp: 'LL 6/17/2021 20:21:20'!
isHoliday: aPotentialHoliday

	^holidayWeekDay = aPotentialHoliday day
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'WeekDayHolidayRule class' category: 'TDD-HolidayCalendar'!
WeekDayHolidayRule class
	instanceVariableNames: ''!

!WeekDayHolidayRule class methodsFor: 'instance creation' stamp: 'LL 6/17/2021 20:16:45'!
for: aHolidayWeekDay 

	^self new initializeFor: aHolidayWeekDay ! !
