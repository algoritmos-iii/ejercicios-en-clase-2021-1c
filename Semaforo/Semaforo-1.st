!classDefinition: #Luz category: 'Semaforo-1'!
DenotativeObject subclass: #Luz
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo-1'!


!classDefinition: #Semaforo category: 'Semaforo-1'!
DenotativeObject subclass: #Semaforo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo-1'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Semaforo class' category: 'Semaforo-1'!
Semaforo class
	instanceVariableNames: 'estado'!

!Semaforo class methodsFor: 'as yet unclassified' stamp: 'LL 5/2/2021 17:45:39'!
cambiarEstado: nuevoEstado

	estado := nuevoEstado! !

!Semaforo class methodsFor: 'as yet unclassified' stamp: 'LL 5/2/2021 17:45:51'!
estado

	^estado! !

!Semaforo class methodsFor: 'as yet unclassified' stamp: 'LL 5/9/2021 20:43:36'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	estado := nil.! !

Semaforo initializeAfterFileIn!