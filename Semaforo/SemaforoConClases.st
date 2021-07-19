!classDefinition: #ReguladorDeTransito category: 'SemaforoConClases'!
Object subclass: #ReguladorDeTransito
	instanceVariableNames: 'semaforoDePrimeraCalle semaforoDeSegundaCalle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SemaforoConClases'!

!ReguladorDeTransito methodsFor: 'publico' stamp: 'LL 5/9/2021 21:52:48'!
prender

	self enviarSeñalDePrecaucion.

	3 timesRepeat: [ self regularTransito ].
	
	self enviarSeñalDePrecaucion.! !


!ReguladorDeTransito methodsFor: 'privado' stamp: 'LL 5/9/2021 20:51:32'!
advertirConSeñalDePrecaucion

	semaforoDePrimeraCalle prenderSeñalDePrecaucion.
	semaforoDeSegundaCalle prenderSeñalDePrecaucion.
	(Delay for: 0.5 * second) wait.
	
	semaforoDePrimeraCalle apagarSeñalDePrecaucion.
	semaforoDeSegundaCalle apagarSeñalDePrecaucion.
	(Delay for: 0.5 * second) wait.! !

!ReguladorDeTransito methodsFor: 'privado' stamp: 'LL 5/9/2021 20:51:32'!
apagarTodasLasSeñales
	
	semaforoDePrimeraCalle apagarSeñalDeDetencion.
	semaforoDePrimeraCalle apagarSeñalDePrecaucion.
	semaforoDePrimeraCalle apagarSeñalDeAvance.
	semaforoDeSegundaCalle apagarSeñalDeDetencion.
	semaforoDeSegundaCalle apagarSeñalDePrecaucion.
	semaforoDeSegundaCalle apagarSeñalDeAvance.! !

!ReguladorDeTransito methodsFor: 'privado' stamp: 'LL 5/9/2021 20:52:22'!
cambioDeTransitoHaciaPrimeraCalle
	
	semaforoDeSegundaCalle apagarSeñalDeAvance.
	semaforoDeSegundaCalle prenderSeñalDePrecaucion.
	(Delay for: 1 * second) wait.! !

!ReguladorDeTransito methodsFor: 'privado' stamp: 'LL 5/9/2021 20:51:52'!
cambioDeTransitoHaciaSegundaCalle
	
	semaforoDePrimeraCalle apagarSeñalDeAvance.
	semaforoDePrimeraCalle prenderSeñalDePrecaucion.
	(Delay for: 1 * second) wait.! !

!ReguladorDeTransito methodsFor: 'privado' stamp: 'LL 5/9/2021 20:52:46'!
enviarSeñalDePrecaucion

	self apagarTodasLasSeñales.
	5 timesRepeat: [ self advertirConSeñalDePrecaucion ]! !

!ReguladorDeTransito methodsFor: 'privado' stamp: 'LL 5/9/2021 21:42:04'!
inicializarCon: unSemaforoParaPrimeraCalle y: unSemaforoParaSegundaCalle

	semaforoDePrimeraCalle := unSemaforoParaPrimeraCalle.
	semaforoDeSegundaCalle := unSemaforoParaSegundaCalle.! !

!ReguladorDeTransito methodsFor: 'privado' stamp: 'LL 5/9/2021 20:53:42'!
permitirTransitoDePrimeraCalle
	
	semaforoDeSegundaCalle apagarSeñalDePrecaucion.
	semaforoDeSegundaCalle prenderSeñalDeDetencion.
	semaforoDePrimeraCalle apagarSeñalDeDetencion.
	semaforoDePrimeraCalle prenderSeñalDeAvance.
	(Delay for: 3 * second) wait.! !

!ReguladorDeTransito methodsFor: 'privado' stamp: 'LL 5/9/2021 20:53:12'!
permitirTransitoDeSegundaCalle

	semaforoDePrimeraCalle apagarSeñalDePrecaucion.
	semaforoDePrimeraCalle prenderSeñalDeDetencion.	
	semaforoDeSegundaCalle apagarSeñalDeDetencion.	
	semaforoDeSegundaCalle prenderSeñalDeAvance.
	(Delay for: 3 * second) wait.! !

!ReguladorDeTransito methodsFor: 'privado' stamp: 'LL 5/9/2021 20:54:31'!
regularTransito

	self permitirTransitoDeSegundaCalle.
	self cambioDeTransitoHaciaPrimeraCalle.
	self permitirTransitoDePrimeraCalle.
	self cambioDeTransitoHaciaSegundaCalle.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ReguladorDeTransito class' category: 'SemaforoConClases'!
ReguladorDeTransito class
	instanceVariableNames: ''!

!ReguladorDeTransito class methodsFor: 'as yet unclassified' stamp: 'LL 5/9/2021 21:49:03'!
usando: unSemaforoParaLaPrimerCalle y: otroSemaforoParaLaSegundaCalle

	^ReguladorDeTransito new inicializarCon: unSemaforoParaLaPrimerCalle y: otroSemaforoParaLaSegundaCalle! !


!classDefinition: #Semaforo category: 'SemaforoConClases'!
Object subclass: #Semaforo
	instanceVariableNames: 'señalDeDetencion señalDePrecaucion señalDeAvance morph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SemaforoConClases'!

!Semaforo methodsFor: 'publico' stamp: 'LL 5/9/2021 21:36:32'!
apagarSeñalDeAvance

	señalDeAvance apagar! !

!Semaforo methodsFor: 'publico' stamp: 'LL 5/9/2021 21:36:43'!
apagarSeñalDeDetencion

	señalDeDetencion apagar! !

!Semaforo methodsFor: 'publico' stamp: 'LL 5/9/2021 21:36:53'!
apagarSeñalDePrecaucion

	señalDePrecaucion apagar! !

!Semaforo methodsFor: 'publico' stamp: 'LL 5/9/2021 21:37:02'!
prenderSeñalDeAvance

	señalDeAvance prender! !

!Semaforo methodsFor: 'publico' stamp: 'LL 5/9/2021 21:37:12'!
prenderSeñalDeDetencion

	señalDeDetencion prender! !

!Semaforo methodsFor: 'publico' stamp: 'LL 5/9/2021 21:37:20'!
prenderSeñalDePrecaucion

	señalDePrecaucion prender! !


!Semaforo methodsFor: 'privado' stamp: 'LL 5/9/2021 21:42:58'!
initialize

	señalDeDetencion := SeñalDeDetencion new.
	señalDePrecaucion := SeñalDePrecaucion new.
	señalDeAvance := SeñalDeAvance new.

	morph := LayoutMorph newColumn
		morphExtent: 60 @ 130;
		yourself.
		
	morph openInWorld.! !


!classDefinition: #SeñalDeSemaforo category: 'SemaforoConClases'!
Object subclass: #SeñalDeSemaforo
	instanceVariableNames: 'morph'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SemaforoConClases'!

!SeñalDeSemaforo methodsFor: 'publico' stamp: 'LL 5/9/2021 21:32:10'!
apagar

	morph color: Color black.! !

!SeñalDeSemaforo methodsFor: 'publico' stamp: 'LL 5/9/2021 21:52:48'!
prender

	self subclassResponsibility! !


!SeñalDeSemaforo methodsFor: 'privado' stamp: 'LL 5/9/2021 21:30:23'!
initialize

	morph := EllipseMorph new
		color: Color black;
		yourself.
		
	morph openInWorld.! !


!classDefinition: #SeñalDeAvance category: 'SemaforoConClases'!
SeñalDeSemaforo subclass: #SeñalDeAvance
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SemaforoConClases'!

!SeñalDeAvance methodsFor: 'publico' stamp: 'LL 5/9/2021 21:52:48'!
prender

	morph color: Color green.! !


!classDefinition: #SeñalDeDetencion category: 'SemaforoConClases'!
SeñalDeSemaforo subclass: #SeñalDeDetencion
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SemaforoConClases'!

!SeñalDeDetencion methodsFor: 'publico' stamp: 'LL 5/9/2021 21:52:48'!
prender

	morph color: Color red.! !


!classDefinition: #SeñalDePrecaucion category: 'SemaforoConClases'!
SeñalDeSemaforo subclass: #SeñalDePrecaucion
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SemaforoConClases'!

!SeñalDePrecaucion methodsFor: 'publico' stamp: 'LL 5/9/2021 21:52:48'!
prender

	morph color: Color yellow.! !
