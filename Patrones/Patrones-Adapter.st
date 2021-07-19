!classDefinition: #Canvas category: 'Patrones-Adapter'!
Object subclass: #Canvas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-Adapter'!

!Canvas methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 18:30:57'!
draw: aDrawable

	Transcript show: aDrawable; newLine! !


!classDefinition: #Customer category: 'Patrones-Adapter'!
Object subclass: #Customer
	instanceVariableNames: 'firstName lastName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-Adapter'!

!Customer methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 18:37:19'!
firstName

	^firstName! !

!Customer methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 18:37:11'!
initializeWithFirstName: aFirstName andLastName: aLastName

	firstName := aFirstName.
	lastName := aLastName! !

!Customer methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 18:37:24'!
lastName

	^lastName! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Customer class' category: 'Patrones-Adapter'!
Customer class
	instanceVariableNames: ''!

!Customer class methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 18:38:17'!
firstName: aFirstName lastName: aLastName

	^self new initializeWithFirstName: aFirstName andLastName: aLastName! !

!Customer class methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 18:35:40'!
named: aFullName

	^self initializeNamed: aFullName! !


!classDefinition: #CustomerToModelAdapter category: 'Patrones-Adapter'!
Object subclass: #CustomerToModelAdapter
	instanceVariableNames: 'customer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-Adapter'!

!CustomerToModelAdapter methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 18:37:51'!
asDrawable

	^customer firstName, ' ', customer lastName! !

!CustomerToModelAdapter methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 18:29:50'!
initializeAdapting: aCustomer

	customer := aCustomer! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CustomerToModelAdapter class' category: 'Patrones-Adapter'!
CustomerToModelAdapter class
	instanceVariableNames: ''!

!CustomerToModelAdapter class methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 18:29:34'!
adapting: aCustomer

	^self new initializeAdapting: aCustomer! !


!classDefinition: #EjemplosAdapter category: 'Patrones-Adapter'!
Object subclass: #EjemplosAdapter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-Adapter'!

!EjemplosAdapter methodsFor: 'as yet unclassified' stamp: 'LL 7/8/2021 21:15:34'!
ejemploAdaptadorUniversal

	| customer inputField |
	customer := Customer firstName: 'Juan' lastName: 'Perez'.
	inputField := InputField for: (PluggableAdapter adapting: #asDrawable with: [ customer firstName, ' ', customer lastName ]).
	
	inputField show: (Canvas new)! !

!EjemplosAdapter methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 18:40:46'!
ejemploEnTranscript

	| customer inputField |
	customer := Customer firstName: 'Juan' lastName: 'Perez'.
	inputField := InputField for: (CustomerToModelAdapter adapting: customer).
	
	inputField show: (Canvas new)! !


!classDefinition: #InputField category: 'Patrones-Adapter'!
Object subclass: #InputField
	instanceVariableNames: 'model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-Adapter'!

!InputField methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 18:27:15'!
initializeFor: aModel

	model := aModel! !

!InputField methodsFor: 'as yet unclassified' stamp: 'LL 7/8/2021 18:10:07'!
show: aCanvas

	aCanvas draw: 'Nombre: [', (model asDrawable), ']'! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'InputField class' category: 'Patrones-Adapter'!
InputField class
	instanceVariableNames: ''!

!InputField class methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 18:27:03'!
for: aModel

	^self new initializeFor: aModel! !


!classDefinition: #PluggableAdapter category: 'Patrones-Adapter'!
Object subclass: #PluggableAdapter
	instanceVariableNames: 'message behaviour'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-Adapter'!

!PluggableAdapter methodsFor: 'as yet unclassified' stamp: 'LL 7/8/2021 18:21:07'!
doesNotUnderstand: aMessage

	aMessage selector = message ifTrue: [ ^behaviour value ].
	
	^super doesNotUnderstand: aMessage! !

!PluggableAdapter methodsFor: 'as yet unclassified' stamp: 'LL 7/8/2021 18:17:14'!
initializeAdapting: aMessage with: aBehaviour

	message := aMessage.
	behaviour := aBehaviour! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PluggableAdapter class' category: 'Patrones-Adapter'!
PluggableAdapter class
	instanceVariableNames: ''!

!PluggableAdapter class methodsFor: 'as yet unclassified' stamp: 'LL 7/8/2021 18:16:38'!
adapting: aMessage with: aBehaviour

	^self new initializeAdapting: aMessage with: aBehaviour! !
