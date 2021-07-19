!classDefinition: #ElSemaforoDeCorrientes category: 'Semaforo-2'!
DenotativeObjectMorph subclass: #ElSemaforoDeCorrientes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo-2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ElSemaforoDeCorrientes class' category: 'Semaforo-2'!
ElSemaforoDeCorrientes class
	instanceVariableNames: ''!

!ElSemaforoDeCorrientes class methodsFor: 'morph' stamp: 'LL 5/6/2021 19:53:48'!
createMorph

	^LayoutMorph newColumn
		morphExtent: 60 @ 130;
		yourself
! !


!ElSemaforoDeCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:40:50'!
advertirEncendido

	5 timesRepeat: 	[ self titilarLuzDePrecaucion. ]! !

!ElSemaforoDeCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:38:53'!
dejarPasarElTransito

	LuzDeAvanceSemaforoCorrientes encender
	! !

!ElSemaforoDeCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:40:51'!
encender

	self advertirEncendido.
	! !

!ElSemaforoDeCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:12:37'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !

!ElSemaforoDeCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:39:35'!
titilarLuzDePrecaucion

	LuzDePrecaucionSemaforoCorrientes encender.
	(Delay for: 0.5 * second) wait.
	LuzDePrecaucionSemaforoCorrientes apagar.
	(Delay for: 0.5 * second) wait.! !

!ElSemaforoDeCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:38:53'!
transicionAAmarillo

	LuzDeAvanceSemaforoCorrientes apagar.
	LuzDePrecaucionSemaforoCorrientes encender.
	! !

!ElSemaforoDeCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:38:26'!
transicionARoja

	LuzDePrecaucionSemaforoCorrientes apagar.
	LuzDeDetencionSemaforoCorrientes encender.
	! !


!classDefinition: #ElSemaforoDeMaipu category: 'Semaforo-2'!
DenotativeObjectMorph subclass: #ElSemaforoDeMaipu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo-2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ElSemaforoDeMaipu class' category: 'Semaforo-2'!
ElSemaforoDeMaipu class
	instanceVariableNames: 'señalDeDetencion'!

!ElSemaforoDeMaipu class methodsFor: 'morph' stamp: 'LL 4/29/2021 22:01:21'!
createMorph

	^LayoutMorph newColumn
		morphExtent: 60 @ 130;
		yourself
! !


!ElSemaforoDeMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:55:40'!
advertirEncendido

	5 timesRepeat: 	[ self titilarLuzDePrecaucion. ]! !

!ElSemaforoDeMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:55:47'!
encender

	self advertirEncendido.
	! !

!ElSemaforoDeMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 21:36:50'!
frenarElTransito

	señalDeDetencion encender.
	! !

!ElSemaforoDeMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:12:37'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	señalDeDetencion := SeñalSonoraDeDetencionDeMaipu.! !

!ElSemaforoDeMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:39:35'!
titilarLuzDePrecaucion

	LuzDePrecaucionSemaforoMaipu encender.
	(Delay for: 0.5 * second) wait.
	LuzDePrecaucionSemaforoMaipu apagar.
	(Delay for: 0.5 * second) wait.! !


!classDefinition: #LuzDeAvanceSemaforoCorrientes category: 'Semaforo-2'!
DenotativeObjectMorph subclass: #LuzDeAvanceSemaforoCorrientes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo-2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LuzDeAvanceSemaforoCorrientes class' category: 'Semaforo-2'!
LuzDeAvanceSemaforoCorrientes class
	instanceVariableNames: ''!

!LuzDeAvanceSemaforoCorrientes class methodsFor: 'morph' stamp: 'LL 5/6/2021 20:07:23'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!LuzDeAvanceSemaforoCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:07:23'!
apagar
	self color: Color black.! !

!LuzDeAvanceSemaforoCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:18:06'!
encender
	self color: Color green.! !

!LuzDeAvanceSemaforoCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:12:37'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #LuzDeAvanceSemaforoMaipu category: 'Semaforo-2'!
DenotativeObjectMorph subclass: #LuzDeAvanceSemaforoMaipu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo-2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LuzDeAvanceSemaforoMaipu class' category: 'Semaforo-2'!
LuzDeAvanceSemaforoMaipu class
	instanceVariableNames: ''!

!LuzDeAvanceSemaforoMaipu class methodsFor: 'morph' stamp: 'LL 5/3/2021 19:56:45'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!LuzDeAvanceSemaforoMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 17:36:58'!
apagar
	self color: Color black.! !

!LuzDeAvanceSemaforoMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:18:06'!
encender
	self color: Color green.! !

!LuzDeAvanceSemaforoMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:12:37'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #LuzDeDetencionSemaforoCorrientes category: 'Semaforo-2'!
DenotativeObjectMorph subclass: #LuzDeDetencionSemaforoCorrientes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo-2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LuzDeDetencionSemaforoCorrientes class' category: 'Semaforo-2'!
LuzDeDetencionSemaforoCorrientes class
	instanceVariableNames: ''!

!LuzDeDetencionSemaforoCorrientes class methodsFor: 'morph' stamp: 'LL 5/6/2021 20:07:16'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!LuzDeDetencionSemaforoCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:07:16'!
apagar
	self color: Color black.! !

!LuzDeDetencionSemaforoCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:18:06'!
encender
	self color: Color red.! !

!LuzDeDetencionSemaforoCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:12:37'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #LuzDeDetencionSemaforoMaipu category: 'Semaforo-2'!
DenotativeObjectMorph subclass: #LuzDeDetencionSemaforoMaipu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo-2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LuzDeDetencionSemaforoMaipu class' category: 'Semaforo-2'!
LuzDeDetencionSemaforoMaipu class
	instanceVariableNames: ''!

!LuzDeDetencionSemaforoMaipu class methodsFor: 'morph' stamp: 'LL 5/6/2021 17:37:27'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!LuzDeDetencionSemaforoMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 17:37:27'!
apagar
	self color: Color black.! !

!LuzDeDetencionSemaforoMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:18:06'!
encender
	self color: Color red.! !

!LuzDeDetencionSemaforoMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:12:38'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #LuzDePrecaucionSemaforoCorrientes category: 'Semaforo-2'!
DenotativeObjectMorph subclass: #LuzDePrecaucionSemaforoCorrientes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo-2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LuzDePrecaucionSemaforoCorrientes class' category: 'Semaforo-2'!
LuzDePrecaucionSemaforoCorrientes class
	instanceVariableNames: ''!

!LuzDePrecaucionSemaforoCorrientes class methodsFor: 'morph' stamp: 'LL 5/6/2021 20:07:08'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!LuzDePrecaucionSemaforoCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:07:08'!
apagar

	self color: Color black! !

!LuzDePrecaucionSemaforoCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 20:07:08'!
encender

	self color: Color yellow! !

!LuzDePrecaucionSemaforoCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:12:38'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #LuzDePrecaucionSemaforoMaipu category: 'Semaforo-2'!
DenotativeObjectMorph subclass: #LuzDePrecaucionSemaforoMaipu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo-2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LuzDePrecaucionSemaforoMaipu class' category: 'Semaforo-2'!
LuzDePrecaucionSemaforoMaipu class
	instanceVariableNames: ''!

!LuzDePrecaucionSemaforoMaipu class methodsFor: 'morph' stamp: 'LL 4/29/2021 22:01:47'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!LuzDePrecaucionSemaforoMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 4/29/2021 22:03:23'!
apagar

	self color: Color black! !

!LuzDePrecaucionSemaforoMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 4/29/2021 22:02:35'!
encender

	self color: Color yellow! !

!LuzDePrecaucionSemaforoMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:12:38'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #SeñalSonoraDeDetencionDeMaipu category: 'Semaforo-2'!
DenotativeObjectMorph subclass: #SeñalSonoraDeDetencionDeMaipu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo-2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalSonoraDeDetencionDeMaipu class' category: 'Semaforo-2'!
SeñalSonoraDeDetencionDeMaipu class
	instanceVariableNames: ''!

!SeñalSonoraDeDetencionDeMaipu class methodsFor: 'morph' stamp: 'LL 5/6/2021 21:25:17'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!SeñalSonoraDeDetencionDeMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 21:26:28'!
apagar

	self color: Color black.! !

!SeñalSonoraDeDetencionDeMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 21:59:21'!
encender

	self color: Color purple.! !

!SeñalSonoraDeDetencionDeMaipu class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 22:12:38'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #ReguladorDeTransitoMaipuYCorrientes category: 'Semaforo-2'!
DenotativeObject subclass: #ReguladorDeTransitoMaipuYCorrientes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo-2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ReguladorDeTransitoMaipuYCorrientes class' category: 'Semaforo-2'!
ReguladorDeTransitoMaipuYCorrientes class
	instanceVariableNames: ''!

!ReguladorDeTransitoMaipuYCorrientes class methodsFor: 'as yet unclassified' stamp: 'LL 5/6/2021 21:29:52'!
regularElTransito

	ElSemaforoDeMaipu encender.
	ElSemaforoDeCorrientes encender.
	
	ElSemaforoDeMaipu frenarElTransito.
	ElSemaforoDeCorrientes dejarPasarElTransito.
	
	(Delay for: 2 * second) wait.
	
	ElSemaforoDeCorrientes transicionAAmarillo.
	
	(Delay for: 1 * second) wait.
	
	ElSemaforoDeCorrientes transicionARoja.
	! !

ElSemaforoDeCorrientes initializeAfterFileIn!
ElSemaforoDeMaipu initializeAfterFileIn!
LuzDeAvanceSemaforoCorrientes initializeAfterFileIn!
LuzDeAvanceSemaforoMaipu initializeAfterFileIn!
LuzDeDetencionSemaforoCorrientes initializeAfterFileIn!
LuzDeDetencionSemaforoMaipu initializeAfterFileIn!
LuzDePrecaucionSemaforoCorrientes initializeAfterFileIn!
LuzDePrecaucionSemaforoMaipu initializeAfterFileIn!
SeñalSonoraDeDetencionDeMaipu initializeAfterFileIn!