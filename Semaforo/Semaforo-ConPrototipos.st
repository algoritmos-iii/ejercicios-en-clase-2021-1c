!classDefinition: #SemaforoDeCorrientes category: 'Semaforo'!
DenotativeObjectMorph subclass: #SemaforoDeCorrientes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SemaforoDeCorrientes class' category: 'Semaforo'!
SemaforoDeCorrientes class
	instanceVariableNames: 'señalDeAvance señalDePrecaucion señalDeDetencion'!

!SemaforoDeCorrientes class methodsFor: 'luces' stamp: 'LL 5/9/2021 18:45:16'!
apagarSeñalDeAvance
	
	señalDeAvance apagar! !

!SemaforoDeCorrientes class methodsFor: 'luces' stamp: 'LL 5/9/2021 18:45:23'!
apagarSeñalDeDetencion
	
	señalDeDetencion apagar! !

!SemaforoDeCorrientes class methodsFor: 'luces' stamp: 'LL 5/9/2021 18:45:29'!
apagarSeñalDePrecaucion

	señalDePrecaucion apagar! !

!SemaforoDeCorrientes class methodsFor: 'luces' stamp: 'LL 5/9/2021 18:45:35'!
prenderSeñalDeAvance
	
	señalDeAvance prender! !

!SemaforoDeCorrientes class methodsFor: 'luces' stamp: 'LL 5/9/2021 18:45:40'!
prenderSeñalDeDetencion
	
	señalDeDetencion prender! !

!SemaforoDeCorrientes class methodsFor: 'luces' stamp: 'LL 5/9/2021 18:45:46'!
prenderSeñalDePrecaucion

	señalDePrecaucion prender! !


!SemaforoDeCorrientes class methodsFor: 'morph - private' stamp: 'LL 10/13/2020 11:18:53'!
createMorph

	^LayoutMorph newColumn
		morphExtent: 60 @ 130;
		yourself
! !


!SemaforoDeCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/9/2021 19:12:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	señalDeAvance := SeñalDeAvanceDeCorrientes.
	señalDePrecaucion := SeñalDePrecaucionDeCorrientes.
	señalDeDetencion := SeñalDeDetencionDeCorrientes.! !


!classDefinition: #SemaforoDeMaipu category: 'Semaforo'!
SemaforoDeCorrientes subclass: #SemaforoDeMaipu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SemaforoDeMaipu class' category: 'Semaforo'!
SemaforoDeMaipu class
	instanceVariableNames: ''!

!SemaforoDeMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/9/2021 19:12:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	señalDeAvance := SeñalDeAvanceDeMaipu.
	señalDePrecaucion := SeñalDePrecaucionDeMaipu.
	señalDeDetencion := SeñalDeDetencionDeMaipu.! !


!classDefinition: #SeñalDePrecaucionDeCorrientes category: 'Semaforo'!
DenotativeObjectMorph subclass: #SeñalDePrecaucionDeCorrientes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDePrecaucionDeCorrientes class' category: 'Semaforo'!
SeñalDePrecaucionDeCorrientes class
	instanceVariableNames: ''!

!SeñalDePrecaucionDeCorrientes class methodsFor: 'funcionamiento' stamp: 'LL 10/13/2020 11:17:07'!
apagar

	self color: Color black.! !

!SeñalDePrecaucionDeCorrientes class methodsFor: 'funcionamiento' stamp: 'LL 10/13/2020 11:17:07'!
prender

	self color: Color yellow.! !


!SeñalDePrecaucionDeCorrientes class methodsFor: 'morph - private' stamp: 'LL 10/13/2020 11:17:07'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!SeñalDePrecaucionDeCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/9/2021 19:12:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #SeñalDeAvanceDeMaipu category: 'Semaforo'!
SeñalDePrecaucionDeCorrientes subclass: #SeñalDeAvanceDeMaipu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDeAvanceDeMaipu class' category: 'Semaforo'!
SeñalDeAvanceDeMaipu class
	instanceVariableNames: ''!

!SeñalDeAvanceDeMaipu class methodsFor: 'funcionamiento' stamp: 'LL 10/13/2020 11:12:11'!
prender

	self color: Color green.! !


!SeñalDeAvanceDeMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/9/2021 19:12:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #SeñalDeAvanceDeCorrientes category: 'Semaforo'!
SeñalDeAvanceDeMaipu subclass: #SeñalDeAvanceDeCorrientes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDeAvanceDeCorrientes class' category: 'Semaforo'!
SeñalDeAvanceDeCorrientes class
	instanceVariableNames: ''!

!SeñalDeAvanceDeCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/9/2021 19:12:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #SeñalDeDetencionDeCorrientes category: 'Semaforo'!
SeñalDePrecaucionDeCorrientes subclass: #SeñalDeDetencionDeCorrientes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDeDetencionDeCorrientes class' category: 'Semaforo'!
SeñalDeDetencionDeCorrientes class
	instanceVariableNames: ''!

!SeñalDeDetencionDeCorrientes class methodsFor: 'funcionamiento' stamp: 'LL 10/13/2020 11:17:15'!
prender

	self color: Color red.! !


!SeñalDeDetencionDeCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/9/2021 19:12:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #SeñalDeDetencionDeMaipu category: 'Semaforo'!
SeñalDeDetencionDeCorrientes subclass: #SeñalDeDetencionDeMaipu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDeDetencionDeMaipu class' category: 'Semaforo'!
SeñalDeDetencionDeMaipu class
	instanceVariableNames: ''!

!SeñalDeDetencionDeMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/9/2021 19:12:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #SeñalDePrecaucionDeMaipu category: 'Semaforo'!
SeñalDePrecaucionDeCorrientes subclass: #SeñalDePrecaucionDeMaipu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDePrecaucionDeMaipu class' category: 'Semaforo'!
SeñalDePrecaucionDeMaipu class
	instanceVariableNames: ''!

!SeñalDePrecaucionDeMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/9/2021 19:12:22'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #ReguladorDeTransitoDeCorrientesYMaipu category: 'Semaforo'!
DenotativeObject subclass: #ReguladorDeTransitoDeCorrientesYMaipu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ReguladorDeTransitoDeCorrientesYMaipu class' category: 'Semaforo'!
ReguladorDeTransitoDeCorrientesYMaipu class
	instanceVariableNames: ''!

!ReguladorDeTransitoDeCorrientesYMaipu class methodsFor: 'funcionamiento' stamp: 'LL 10/13/2020 14:07:23'!
encender

	self enviarSeñalDePrecaucion.

	3 timesRepeat: [ self regularTransito ].
	
	self enviarSeñalDePrecaucion.! !


!ReguladorDeTransitoDeCorrientesYMaipu class methodsFor: 'precaucion - private' stamp: 'LL 5/6/2021 22:22:35'!
advertirConSeñalDePrecaucion

	SemaforoDeCorrientes prenderSeñalDePrecaucion.
	SemaforoDeMaipu prenderSeñalDePrecaucion.
	(Delay for: 0.5 * second) wait.
	
	SemaforoDeCorrientes apagarSeñalDePrecaucion.
	SemaforoDeMaipu apagarSeñalDePrecaucion.
	(Delay for: 0.5 * second) wait.! !

!ReguladorDeTransitoDeCorrientesYMaipu class methodsFor: 'precaucion - private' stamp: 'LL 5/6/2021 22:21:40'!
apagarTodasLasSeñales
	
	SemaforoDeMaipu apagarSeñalDeDetencion.
	SemaforoDeMaipu apagarSeñalDePrecaucion.
	SemaforoDeMaipu apagarSeñalDeAvance.
	SemaforoDeCorrientes apagarSeñalDeDetencion.
	SemaforoDeCorrientes apagarSeñalDePrecaucion.
	SemaforoDeCorrientes apagarSeñalDeAvance.! !

!ReguladorDeTransitoDeCorrientesYMaipu class methodsFor: 'precaucion - private' stamp: 'LL 5/6/2021 22:22:36'!
enviarSeñalDePrecaucion

	self apagarTodasLasSeñales.
	5 timesRepeat: [ self advertirConSeñalDePrecaucion ]! !


!ReguladorDeTransitoDeCorrientesYMaipu class methodsFor: 'regular transito - private' stamp: 'LL 5/6/2021 22:21:01'!
cambioDeTransitoHaciaCorrientes
	
	SemaforoDeMaipu apagarSeñalDeAvance.
	SemaforoDeMaipu prenderSeñalDePrecaucion.
	(Delay for: 1 * second) wait.! !

!ReguladorDeTransitoDeCorrientesYMaipu class methodsFor: 'regular transito - private' stamp: 'LL 5/6/2021 22:21:01'!
cambioDeTransitoHaciaMaipu
	
	SemaforoDeCorrientes apagarSeñalDeAvance.
	SemaforoDeCorrientes prenderSeñalDePrecaucion.
	(Delay for: 1 * second) wait.! !

!ReguladorDeTransitoDeCorrientesYMaipu class methodsFor: 'regular transito - private' stamp: 'LL 5/6/2021 22:21:40'!
permitirTransitoDeCorrientes

	SemaforoDeMaipu apagarSeñalDePrecaucion.
	SemaforoDeMaipu prenderSeñalDeDetencion.	
	SemaforoDeCorrientes apagarSeñalDeDetencion.	
	SemaforoDeCorrientes prenderSeñalDeAvance.
	(Delay for: 3 * second) wait.! !

!ReguladorDeTransitoDeCorrientesYMaipu class methodsFor: 'regular transito - private' stamp: 'LL 5/6/2021 22:21:40'!
permitirTransitoDeMaipu
	
	SemaforoDeCorrientes apagarSeñalDePrecaucion.
	SemaforoDeCorrientes prenderSeñalDeDetencion.
	SemaforoDeMaipu apagarSeñalDeDetencion.
	SemaforoDeMaipu prenderSeñalDeAvance.
	(Delay for: 3 * second) wait.! !

!ReguladorDeTransitoDeCorrientesYMaipu class methodsFor: 'regular transito - private' stamp: 'LL 10/13/2020 14:03:22'!
regularTransito

	self permitirTransitoDeCorrientes.
	self cambioDeTransitoHaciaMaipu.
	self permitirTransitoDeMaipu.
	self cambioDeTransitoHaciaCorrientes.! !

SemaforoDeCorrientes initializeAfterFileIn!
SemaforoDeMaipu initializeAfterFileIn!
SeñalDePrecaucionDeCorrientes initializeAfterFileIn!
SeñalDeAvanceDeMaipu initializeAfterFileIn!
SeñalDeAvanceDeCorrientes initializeAfterFileIn!
SeñalDeDetencionDeCorrientes initializeAfterFileIn!
SeñalDeDetencionDeMaipu initializeAfterFileIn!
SeñalDePrecaucionDeMaipu initializeAfterFileIn!