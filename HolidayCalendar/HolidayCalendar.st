!classDefinition: #HolidayCalendarTest category: 'HolidayCalendar'!
TestCase subclass: #HolidayCalendarTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'HolidayCalendar'!

!HolidayCalendarTest methodsFor: 'as yet unclassified' stamp: 'LL 11/26/2020 23:48:01'!
atest08

	| holidayCalendar aChristmas |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar markMonthdayAsHoliday: December/25 from: January/1/1990 to: December/31/1999.
	aChristmas := December/25/1992.
	
	self assert: (holidayCalendar isHoliday: aChristmas).! !

!HolidayCalendarTest methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 19:36:18'!
test01AWeekdayMarkedAsHolidayIsAHoliday

	| aSunday holidayCalendar |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (WeekdayHolidayRule for: Sunday).
	aSunday := November/22/2020.
	
	self assert: (holidayCalendar isHoliday: aSunday)! !

!HolidayCalendarTest methodsFor: 'as yet unclassified' stamp: 'LL 11/26/2020 20:58:55'!
test02UnmarkedWeekdayIsNotAHoliday

	| holidayCalendar aMonday |
	holidayCalendar := HolidayCalendar new.
	aMonday := November/23/2020.
	
	self deny: (holidayCalendar isHoliday: aMonday)! !

!HolidayCalendarTest methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 19:36:51'!
test03MoreThanOneWeekdayCanBeHoliday

	| holidayCalendar aSaturday aSunday |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (WeekdayHolidayRule for: Saturday).
	holidayCalendar addRule: (WeekdayHolidayRule for: Sunday).
	aSaturday := November/21/2020.
	aSunday := November/22/2020.
	
	self assert: (holidayCalendar isHoliday: aSaturday).
	self assert: (holidayCalendar isHoliday: aSunday)! !

!HolidayCalendarTest methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 19:37:05'!
test04AMonthdayMarkedAsHolidayIsAHoliday

	| holidayCalendar aChristmas |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (MonthdayHolidayRule for: December/25).
	aChristmas := December/25/2020.
	
	self assert: (holidayCalendar isHoliday: aChristmas).! !

!HolidayCalendarTest methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 19:37:16'!
test05UnmarkedMonthdayIsNotAHoliday

	| holidayCalendar aDayAfterChristmas |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (MonthdayHolidayRule for: December/25).
	aDayAfterChristmas := December/26/2020.
	
	self deny: (holidayCalendar isHoliday: aDayAfterChristmas).! !

!HolidayCalendarTest methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 19:37:29'!
test06ADateMarkedAsHolidayIsAHoliday

	| holidayCalendar aDate |
	holidayCalendar := HolidayCalendar new.
	aDate := April/12/2012.
	holidayCalendar addRule: (DateHolidayRule for: aDate).
	
	self assert: (holidayCalendar isHoliday: aDate).! !

!HolidayCalendarTest methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 19:37:44'!
test07MoreThanOneDateMarkedAsHolidaysAreHolidays

	| holidayCalendar aDate anotherDate |
	holidayCalendar := HolidayCalendar new.
	aDate := April/12/2012.
	anotherDate := April/15/2012.
	holidayCalendar addRule: (DateHolidayRule for: aDate).
	holidayCalendar addRule: (DateHolidayRule for: anotherDate).
	
	self assert: (holidayCalendar isHoliday: aDate).
	self assert: (holidayCalendar isHoliday: anotherDate).! !

!HolidayCalendarTest methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 20:21:08'!
test08AHolidayMarkedAsHolidayInPeriodIsHoliday

	| holidayCalendar aChristmasInPeriod |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (InPeriodHolidayRule for: (MonthdayHolidayRule for: December/25) from: January/1/1990 to: December/31/1999).
	aChristmasInPeriod := December/25/1992.
	
	self assert: (holidayCalendar isHoliday: aChristmasInPeriod).! !

!HolidayCalendarTest methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 20:21:08'!
test09

	| holidayCalendar aChristmasAfterPeriodEnds |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (InPeriodHolidayRule for: (MonthdayHolidayRule for: December/25) from: January/1/1990 to: December/31/1999).
	aChristmasAfterPeriodEnds := December/25/2000.
	
	self deny: (holidayCalendar isHoliday: aChristmasAfterPeriodEnds).! !

!HolidayCalendarTest methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 20:21:08'!
test10

	| holidayCalendar aChristmasBeforePeriodBegins |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (InPeriodHolidayRule for: (MonthdayHolidayRule for: December/25) from: January/1/1990 to: December/31/1999).
	aChristmasBeforePeriodBegins := December/25/1989.
	
	self deny: (holidayCalendar isHoliday: aChristmasBeforePeriodBegins).! !

!HolidayCalendarTest methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 20:21:08'!
test11

	| holidayCalendar aDayAfterChristmasInPeriod |
	holidayCalendar := HolidayCalendar new.
	holidayCalendar addRule: (InPeriodHolidayRule for: (MonthdayHolidayRule for: December/25) from: January/1/1990 to: December/31/1999).
	aDayAfterChristmasInPeriod := December/26/1992.
	
	self deny: (holidayCalendar isHoliday: aDayAfterChristmasInPeriod).! !


!classDefinition: #HolidayCalendar category: 'HolidayCalendar'!
Object subclass: #HolidayCalendar
	instanceVariableNames: 'holidayRules'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'HolidayCalendar'!

!HolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 19:35:48'!
addRule: aHolidayRule 
	
	holidayRules add: aHolidayRule! !

!HolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 19:47:44'!
initialize

	holidayRules := Set new.! !

!HolidayCalendar methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 19:33:50'!
isHoliday: aPotentialHoliday 
	
	^holidayRules anySatisfy: [:aRule | aRule isHoliday: aPotentialHoliday ]! !


!classDefinition: #HolidayRule category: 'HolidayCalendar'!
Object subclass: #HolidayRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'HolidayCalendar'!

!HolidayRule methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 19:39:36'!
isHoliday: aPotentialHoliday

	self subclassResponsibility ! !


!classDefinition: #DateHolidayRule category: 'HolidayCalendar'!
HolidayRule subclass: #DateHolidayRule
	instanceVariableNames: 'dateHoliday'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'HolidayCalendar'!

!DateHolidayRule methodsFor: 'initialization' stamp: 'LL 11/30/2020 19:32:58'!
initializeFor: aDateHoliday 

	dateHoliday := aDateHoliday.! !


!DateHolidayRule methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 19:33:19'!
isHoliday: aPotentialHoliday

	^aPotentialHoliday = dateHoliday! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DateHolidayRule class' category: 'HolidayCalendar'!
DateHolidayRule class
	instanceVariableNames: ''!

!DateHolidayRule class methodsFor: 'instance creation' stamp: 'LL 11/30/2020 19:32:42'!
for: aDateHoliday 

	^self new initializeFor: aDateHoliday ! !


!classDefinition: #InPeriodHolidayRule category: 'HolidayCalendar'!
HolidayRule subclass: #InPeriodHolidayRule
	instanceVariableNames: 'holidayRule startDate endDate'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'HolidayCalendar'!

!InPeriodHolidayRule methodsFor: 'initialization' stamp: 'LL 11/30/2020 20:18:07'!
initializeFor: aMonthdayHolidayRule from: aStartDate to: aEndDate 
	
	holidayRule := aMonthdayHolidayRule.
	startDate := aStartDate.
	endDate := aEndDate.! !


!InPeriodHolidayRule methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 20:18:07'!
isHoliday: aPotentialHoliday

	^(holidayRule isHoliday: aPotentialHoliday) and: [ aPotentialHoliday between: startDate and: endDate ]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'InPeriodHolidayRule class' category: 'HolidayCalendar'!
InPeriodHolidayRule class
	instanceVariableNames: ''!

!InPeriodHolidayRule class methodsFor: 'instance creation' stamp: 'LL 11/30/2020 19:53:43'!
for: aMonthdayHolidayRule from: aFrom to: aTo 
	
	^self new initializeFor: aMonthdayHolidayRule from: aFrom to: aTo! !


!classDefinition: #MonthdayHolidayRule category: 'HolidayCalendar'!
HolidayRule subclass: #MonthdayHolidayRule
	instanceVariableNames: 'monthdayHoliday'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'HolidayCalendar'!

!MonthdayHolidayRule methodsFor: 'initialization' stamp: 'LL 11/30/2020 19:31:20'!
initializeFor: aMonthdayHoliday 

	monthdayHoliday := aMonthdayHoliday.! !


!MonthdayHolidayRule methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 19:31:47'!
isHoliday: aPotentialHoliday

	^aPotentialHoliday dayOfMonth = monthdayHoliday! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MonthdayHolidayRule class' category: 'HolidayCalendar'!
MonthdayHolidayRule class
	instanceVariableNames: ''!

!MonthdayHolidayRule class methodsFor: 'instance creation' stamp: 'LL 11/30/2020 19:31:07'!
for: aMonthdayHoliday 

	^self new initializeFor: aMonthdayHoliday ! !


!classDefinition: #WeekdayHolidayRule category: 'HolidayCalendar'!
HolidayRule subclass: #WeekdayHolidayRule
	instanceVariableNames: 'weekdayHoliday'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'HolidayCalendar'!

!WeekdayHolidayRule methodsFor: 'initialization' stamp: 'LL 11/30/2020 19:27:35'!
initializeFor: aWeekdayHoliday 
	
	weekdayHoliday := aWeekdayHoliday.! !


!WeekdayHolidayRule methodsFor: 'as yet unclassified' stamp: 'LL 11/30/2020 19:29:48'!
isHoliday: aPotentialHoliday

	^aPotentialHoliday day = weekdayHoliday! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'WeekdayHolidayRule class' category: 'HolidayCalendar'!
WeekdayHolidayRule class
	instanceVariableNames: ''!

!WeekdayHolidayRule class methodsFor: 'instance creation' stamp: 'LL 11/30/2020 19:27:18'!
for: aWeekdayHoliday 
	
	^self new initializeFor: aWeekdayHoliday! !
