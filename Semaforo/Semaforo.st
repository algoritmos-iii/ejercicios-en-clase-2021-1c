!classDefinition: #SemaforoDeCorrientes category: 'Semaforo'!
DenotativeObjectMorph subclass: #SemaforoDeCorrientes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SemaforoDeCorrientes class' category: 'Semaforo'!
SemaforoDeCorrientes class
	instanceVariableNames: ''!

!SemaforoDeCorrientes class methodsFor: 'luces' stamp: 'LL 5/6/2021 22:20:37'!
apagarSeñalDeAvance
	
	SeñalDeAvanceDeCorrientes apagar! !

!SemaforoDeCorrientes class methodsFor: 'luces' stamp: 'LL 5/6/2021 22:20:49'!
apagarSeñalDeDetencion
	
	SeñalDeDetencionDeCorrientes apagar! !

!SemaforoDeCorrientes class methodsFor: 'luces' stamp: 'LL 5/6/2021 22:20:25'!
apagarSeñalDePrecaucion

	SeñalDePrecaucionDeCorrientes apagar! !

!SemaforoDeCorrientes class methodsFor: 'luces' stamp: 'LL 5/6/2021 22:21:22'!
prenderSeñalDeAvance
	
	SeñalDeAvanceDeCorrientes prender! !

!SemaforoDeCorrientes class methodsFor: 'luces' stamp: 'LL 5/6/2021 22:21:11'!
prenderSeñalDeDetencion
	
	SeñalDeDetencionDeCorrientes prender! !

!SemaforoDeCorrientes class methodsFor: 'luces' stamp: 'LL 5/6/2021 22:21:01'!
prenderSeñalDePrecaucion

	SeñalDePrecaucionDeCorrientes prender! !


!SemaforoDeCorrientes class methodsFor: 'morph - private' stamp: 'LL 10/13/2020 11:18:53'!
createMorph

	^LayoutMorph newColumn
		morphExtent: 60 @ 130;
		yourself
! !


!SemaforoDeCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:23:10'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #SemaforoDeMaipu category: 'Semaforo'!
DenotativeObjectMorph subclass: #SemaforoDeMaipu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SemaforoDeMaipu class' category: 'Semaforo'!
SemaforoDeMaipu class
	instanceVariableNames: ''!

!SemaforoDeMaipu class methodsFor: 'luces' stamp: 'LL 5/6/2021 22:20:37'!
apagarSeñalDeAvance
	
	SeñalDeAvanceDeMaipu apagar! !

!SemaforoDeMaipu class methodsFor: 'luces' stamp: 'LL 5/6/2021 22:21:40'!
apagarSeñalDeDetencion
	
	SeñalDeDetencionDeMaipu apagar! !

!SemaforoDeMaipu class methodsFor: 'luces' stamp: 'LL 5/6/2021 22:20:25'!
apagarSeñalDePrecaucion

	SeñalDePrecaucionDeMaipu apagar! !

!SemaforoDeMaipu class methodsFor: 'luces' stamp: 'LL 5/6/2021 22:21:22'!
prenderSeñalDeAvance
	
	SeñalDeAvanceDeMaipu prender! !

!SemaforoDeMaipu class methodsFor: 'luces' stamp: 'LL 5/6/2021 22:21:11'!
prenderSeñalDeDetencion

	SeñalDeDetencionDeMaipu prender! !

!SemaforoDeMaipu class methodsFor: 'luces' stamp: 'LL 5/6/2021 22:21:01'!
prenderSeñalDePrecaucion

	SeñalDePrecaucionDeMaipu prender! !


!SemaforoDeMaipu class methodsFor: 'morph - private' stamp: 'LL 10/13/2020 11:07:43'!
createMorph

	^LayoutMorph newColumn
		morphExtent: 60 @ 130;
		yourself
! !


!SemaforoDeMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:23:10'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #SeñalDeAvanceDeCorrientes category: 'Semaforo'!
DenotativeObjectMorph subclass: #SeñalDeAvanceDeCorrientes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDeAvanceDeCorrientes class' category: 'Semaforo'!
SeñalDeAvanceDeCorrientes class
	instanceVariableNames: ''!

!SeñalDeAvanceDeCorrientes class methodsFor: 'funcionamiento' stamp: 'LL 10/13/2020 11:17:22'!
apagar

	self color: Color black.! !

!SeñalDeAvanceDeCorrientes class methodsFor: 'funcionamiento' stamp: 'LL 10/13/2020 11:17:22'!
prender

	self color: Color green.! !


!SeñalDeAvanceDeCorrientes class methodsFor: 'morph - private' stamp: 'LL 10/13/2020 11:17:22'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!SeñalDeAvanceDeCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:23:10'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #SeñalDeAvanceDeMaipu category: 'Semaforo'!
DenotativeObjectMorph subclass: #SeñalDeAvanceDeMaipu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDeAvanceDeMaipu class' category: 'Semaforo'!
SeñalDeAvanceDeMaipu class
	instanceVariableNames: ''!

!SeñalDeAvanceDeMaipu class methodsFor: 'funcionamiento' stamp: 'LL 10/13/2020 11:12:01'!
apagar

	self color: Color black.! !

!SeñalDeAvanceDeMaipu class methodsFor: 'funcionamiento' stamp: 'LL 10/13/2020 11:12:11'!
prender

	self color: Color green.! !


!SeñalDeAvanceDeMaipu class methodsFor: 'morph - private' stamp: 'LL 10/13/2020 11:12:01'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!SeñalDeAvanceDeMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:23:10'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #SeñalDeDetencionDeCorrientes category: 'Semaforo'!
DenotativeObjectMorph subclass: #SeñalDeDetencionDeCorrientes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDeDetencionDeCorrientes class' category: 'Semaforo'!
SeñalDeDetencionDeCorrientes class
	instanceVariableNames: ''!

!SeñalDeDetencionDeCorrientes class methodsFor: 'funcionamiento' stamp: 'LL 10/13/2020 11:17:15'!
apagar

	self color: Color black.! !

!SeñalDeDetencionDeCorrientes class methodsFor: 'funcionamiento' stamp: 'LL 10/13/2020 11:17:15'!
prender

	self color: Color red.! !


!SeñalDeDetencionDeCorrientes class methodsFor: 'morph - private' stamp: 'LL 10/13/2020 11:17:15'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!SeñalDeDetencionDeCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:23:10'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #SeñalDeDetencionDeMaipu category: 'Semaforo'!
DenotativeObjectMorph subclass: #SeñalDeDetencionDeMaipu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDeDetencionDeMaipu class' category: 'Semaforo'!
SeñalDeDetencionDeMaipu class
	instanceVariableNames: ''!

!SeñalDeDetencionDeMaipu class methodsFor: 'funcionamiento' stamp: 'LL 10/13/2020 11:11:50'!
apagar

	self color: Color black.! !

!SeñalDeDetencionDeMaipu class methodsFor: 'funcionamiento' stamp: 'LL 10/13/2020 11:11:55'!
prender

	self color: Color red.! !


!SeñalDeDetencionDeMaipu class methodsFor: 'morph - private' stamp: 'LL 10/13/2020 11:11:50'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!SeñalDeDetencionDeMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:23:10'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


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


!SeñalDePrecaucionDeCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:23:10'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #SeñalDePrecaucionDeMaipu category: 'Semaforo'!
DenotativeObjectMorph subclass: #SeñalDePrecaucionDeMaipu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDePrecaucionDeMaipu class' category: 'Semaforo'!
SeñalDePrecaucionDeMaipu class
	instanceVariableNames: ''!

!SeñalDePrecaucionDeMaipu class methodsFor: 'funcionamiento' stamp: 'LL 10/12/2020 18:59:18'!
apagar

	self color: Color black.! !

!SeñalDePrecaucionDeMaipu class methodsFor: 'funcionamiento' stamp: 'LL 10/12/2020 18:59:13'!
prender

	self color: Color yellow.! !


!SeñalDePrecaucionDeMaipu class methodsFor: 'morph - private' stamp: 'LL 10/12/2020 18:51:12'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!SeñalDePrecaucionDeMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:23:10'!
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
SeñalDeAvanceDeCorrientes initializeAfterFileIn!
SeñalDeAvanceDeMaipu initializeAfterFileIn!
SeñalDeDetencionDeCorrientes initializeAfterFileIn!
SeñalDeDetencionDeMaipu initializeAfterFileIn!
SeñalDePrecaucionDeCorrientes initializeAfterFileIn!
SeñalDePrecaucionDeMaipu initializeAfterFileIn!