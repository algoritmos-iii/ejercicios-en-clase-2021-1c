!classDefinition: #TCPConnection category: 'Patrones-State'!
Object subclass: #TCPConnection
	instanceVariableNames: 'state'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-State'!

!TCPConnection methodsFor: 'as yet unclassified' stamp: 'LL 6/28/2021 18:24:19'!
acknowledge

	(state = #established) ifTrue: [
		"..."
	] ifFalse: [
		"..."
	].! !

!TCPConnection methodsFor: 'as yet unclassified' stamp: 'LL 6/28/2021 21:19:20'!
close

	^state close! !

!TCPConnection methodsFor: 'as yet unclassified' stamp: 'LL 6/28/2021 21:26:59'!
initialize

	state := TCPListen for: self.! !

!TCPConnection methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 17:04:21'!
send: aPacket

	(state = #listen) ifTrue: [
		"..."
	].
	(state = #established) ifTrue: [
		"..."
	].
	(state = #closed) ifTrue: [
		"..."
		self error: ''.
	].

	^aPacket! !

!TCPConnection methodsFor: 'as yet unclassified' stamp: 'LL 6/28/2021 21:22:36'!
shouldCloseConnection

	state := TCPClosed new.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TCPConnection class' category: 'Patrones-State'!
TCPConnection class
	instanceVariableNames: 'uniqueInstance'!

!TCPConnection class methodsFor: 'as yet unclassified' stamp: 'LL 6/28/2021 18:25:46'!
open: aPort

	^self new initialize! !


!classDefinition: #EncryptedTCPConnection category: 'Patrones-State'!
TCPConnection subclass: #EncryptedTCPConnection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-State'!

!EncryptedTCPConnection methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 21:27:49'!
send: aPacket

	^super send: (self encrypt: aPacket)! !


!classDefinition: #EncryptedZippedTCPConnection category: 'Patrones-State'!
EncryptedTCPConnection subclass: #EncryptedZippedTCPConnection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-State'!

!EncryptedZippedTCPConnection methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 21:29:30'!
send: aPacket

	^super send: (self zip: aPacket)! !


!classDefinition: #TracedTCPConnection category: 'Patrones-State'!
TCPConnection subclass: #TracedTCPConnection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-State'!

!TracedTCPConnection methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 21:22:40'!
send: aPacket

	self log: aPacket.
	^super send: aPacket.! !


!classDefinition: #ZippedTCPConnection category: 'Patrones-State'!
TCPConnection subclass: #ZippedTCPConnection
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-State'!

!ZippedTCPConnection methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 21:25:31'!
send: aPacket

	^super send: (self zip: aPacket)! !


!classDefinition: #TCPConnectionState category: 'Patrones-State'!
Object subclass: #TCPConnectionState
	instanceVariableNames: 'connection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-State'!
!TCPConnectionState commentStamp: 'LL 6/28/2021 21:39:35' prior: 0!
Esta clase modela una conexión TCP y sigue el patrón State!


!TCPConnectionState methodsFor: 'as yet unclassified' stamp: 'LL 6/28/2021 21:26:12'!
initializeFor: aConnection

	connection := aConnection! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TCPConnectionState class' category: 'Patrones-State'!
TCPConnectionState class
	instanceVariableNames: ''!

!TCPConnectionState class methodsFor: 'as yet unclassified' stamp: 'LL 6/28/2021 21:25:03'!
for: aConnection

	^self new initializeFor: aConnection! !


!classDefinition: #TCPClosed category: 'Patrones-State'!
TCPConnectionState subclass: #TCPClosed
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-State'!

!TCPClosed methodsFor: 'as yet unclassified' stamp: 'LL 6/28/2021 21:18:26'!
close

	"..."
	self error: 'Connection already closed'! !


!classDefinition: #TCPEstablished category: 'Patrones-State'!
TCPConnectionState subclass: #TCPEstablished
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-State'!

!TCPEstablished methodsFor: 'as yet unclassified' stamp: 'LL 6/28/2021 21:24:09'!
close

	"..."
	^connection shouldCloseConnection.
	! !


!classDefinition: #TCPListen category: 'Patrones-State'!
TCPConnectionState subclass: #TCPListen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-State'!

!TCPListen methodsFor: 'as yet unclassified' stamp: 'LL 7/1/2021 17:17:59'!
close! !
