!classDefinition: #ConnectionDecorator category: 'Patrones-Decorator'!
Object subclass: #ConnectionDecorator
	instanceVariableNames: 'decoratee'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-Decorator'!

!ConnectionDecorator methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 17:12:39'!
close

	^decoratee close.! !

!ConnectionDecorator methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 17:13:14'!
initializeDecorating: aConnection

	decoratee := aConnection! !

!ConnectionDecorator methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 17:13:20'!
send: aPacket

	^decoratee send: aPacket! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ConnectionDecorator class' category: 'Patrones-Decorator'!
ConnectionDecorator class
	instanceVariableNames: ''!

!ConnectionDecorator class methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 17:25:59'!
decorating: aConnection

	^self new initializeDecorating: aConnection.! !


!classDefinition: #EncryptedConnectionDecorator category: 'Patrones-Decorator'!
ConnectionDecorator subclass: #EncryptedConnectionDecorator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-Decorator'!

!EncryptedConnectionDecorator methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 17:20:12'!
encrypt: aPacket

	^'*-*', aPacket, '*-*'! !

!EncryptedConnectionDecorator methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 17:20:04'!
send: aPacket

	^decoratee send: (self encrypt: aPacket)! !


!classDefinition: #TracedConnectionDecorator category: 'Patrones-Decorator'!
ConnectionDecorator subclass: #TracedConnectionDecorator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-Decorator'!

!TracedConnectionDecorator methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 17:11:13'!
close

	self trace: 'Closing'.
	^decoratee close
	! !

!TracedConnectionDecorator methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 17:12:08'!
send: aPacket

	self trace: 'Sending: [', aPacket printString, ']'.
	^decoratee send: aPacket
	! !

!TracedConnectionDecorator methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 17:12:24'!
trace: aString

	Transcript show: DateAndTime now printString; space; show: aString; newLine! !


!classDefinition: #EjemplosDecorator category: 'Patrones-Decorator'!
Object subclass: #EjemplosDecorator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-Decorator'!

!EjemplosDecorator methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 17:20:31'!
ejemplo01Simple

	| connection |
	connection := TracedConnectionDecorator decorating: TCPConnection new.
	
	connection send: 'Hola'.
	connection send: 'Chau'.
	connection close.! !

!EjemplosDecorator methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 17:25:28'!
ejemplo02DecoratorsEncadenados

	| connection |
	connection := EncryptedConnectionDecorator decorating: (TracedConnectionDecorator decorating: TCPConnection new).
	
	connection send: 'Hola'.
	connection send: 'Chau'.
	connection close.! !
