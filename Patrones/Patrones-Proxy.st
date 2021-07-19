!classDefinition: #AddressBook category: 'Patrones-Proxy'!
Object subclass: #AddressBook
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-Proxy'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AddressBook class' category: 'Patrones-Proxy'!
AddressBook class
	instanceVariableNames: ''!

!AddressBook class methodsFor: 'as yet unclassified' stamp: 'LL 7/15/2021 17:29:04'!
addressesFor: aProvider

	^Array new! !


!classDefinition: #PhoneBook category: 'Patrones-Proxy'!
Object subclass: #PhoneBook
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-Proxy'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PhoneBook class' category: 'Patrones-Proxy'!
PhoneBook class
	instanceVariableNames: ''!

!PhoneBook class methodsFor: 'as yet unclassified' stamp: 'LL 7/15/2021 17:28:56'!
phonesFor: aProvider

	^Array new! !


!classDefinition: #Provider category: 'Patrones-Proxy'!
Object subclass: #Provider
	instanceVariableNames: 'phones addresses'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-Proxy'!

!Provider methodsFor: 'as yet unclassified' stamp: 'LL 7/15/2021 21:36:52'!
addresses

	^addresses! !

!Provider methodsFor: 'as yet unclassified' stamp: 'LL 7/15/2021 21:36:56'!
phones

	^phones! !


!Provider methodsFor: 'initialization' stamp: 'LL 7/15/2021 21:34:32'!
initialize

	addresses := LazyInitializationProxy initializingProxeeWith: [ AddressBook addressesFor: self ].
	phones := LazyInitializationProxy initializingProxeeWith: [ PhoneBook phonesFor: self ].! !


!classDefinition: #LazyInitializationProxy category: 'Patrones-Proxy'!
ProtoObject subclass: #LazyInitializationProxy
	instanceVariableNames: 'proxee initializationClosure'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-Proxy'!

!LazyInitializationProxy methodsFor: 'as yet unclassified' stamp: 'LL 7/15/2021 21:35:52'!
doesNotUnderstand: aMessage

	^aMessage sendTo: self value! !

!LazyInitializationProxy methodsFor: 'as yet unclassified' stamp: 'LL 7/15/2021 21:33:46'!
initializingProxeeWith: anInitializationClosure

	initializationClosure := anInitializationClosure.
	proxee := nil.! !

!LazyInitializationProxy methodsFor: 'as yet unclassified' stamp: 'LL 7/15/2021 21:32:57'!
value

	proxee ifNil: [ proxee := initializationClosure value ].
	^proxee! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LazyInitializationProxy class' category: 'Patrones-Proxy'!
LazyInitializationProxy class
	instanceVariableNames: ''!

!LazyInitializationProxy class methodsFor: 'as yet unclassified' stamp: 'LL 7/15/2021 21:34:00'!
initializingProxeeWith: anInitializationClosure

	^self new initializingProxeeWith: anInitializationClosure! !
