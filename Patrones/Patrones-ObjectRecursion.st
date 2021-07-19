!classDefinition: #EntradaDeDirectorio category: 'Patrones-ObjectRecursion'!
Object subclass: #EntradaDeDirectorio
	instanceVariableNames: 'persona'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-ObjectRecursion'!

!EntradaDeDirectorio methodsFor: 'as yet unclassified' stamp: 'LL 7/5/2021 01:47:59'!
= otroObjeto

	^(otroObjeto isKindOf: self class) and: [ self persona = otroObjeto persona ]

! !

!EntradaDeDirectorio methodsFor: 'as yet unclassified' stamp: 'LL 7/5/2021 01:47:42'!
initializePara: unaPersona

	persona := unaPersona! !

!EntradaDeDirectorio methodsFor: 'as yet unclassified' stamp: 'LL 7/5/2021 01:47:50'!
persona

	^persona! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EntradaDeDirectorio class' category: 'Patrones-ObjectRecursion'!
EntradaDeDirectorio class
	instanceVariableNames: ''!

!EntradaDeDirectorio class methodsFor: 'as yet unclassified' stamp: 'LL 7/5/2021 01:47:26'!
para: unaPersona

	^self new initializePara: unaPersona! !


!classDefinition: #Persona category: 'Patrones-ObjectRecursion'!
Object subclass: #Persona
	instanceVariableNames: 'nombre apellido'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-ObjectRecursion'!

!Persona methodsFor: 'as yet unclassified' stamp: 'LL 7/5/2021 01:48:38'!
= otroObjecto

	^(otroObjecto isKindOf: self class) and: [ self nombre = otroObjecto nombre and: [ self apellido = otroObjecto apellido ] ]! !

!Persona methodsFor: 'as yet unclassified' stamp: 'LL 7/5/2021 01:40:17'!
apellido

	^apellido! !

!Persona methodsFor: 'as yet unclassified' stamp: 'LL 7/5/2021 01:48:29'!
initializeDeNombre: unNombre yApellido: unApellido

	nombre := unNombre.
	apellido := unApellido.! !

!Persona methodsFor: 'as yet unclassified' stamp: 'LL 7/5/2021 01:48:29'!
nombre

	^nombre! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Persona class' category: 'Patrones-ObjectRecursion'!
Persona class
	instanceVariableNames: ''!

!Persona class methodsFor: 'as yet unclassified' stamp: 'LL 7/5/2021 01:38:37'!
deNombre: unNombre yApellido: unApellido

	^self new initializeDeNombre: unNombre yApellido: unApellido! !


!classDefinition: #Sistema category: 'Patrones-ObjectRecursion'!
Object subclass: #Sistema
	instanceVariableNames: 'entradasDeDirectorio'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-ObjectRecursion'!

!Sistema methodsFor: 'as yet unclassified' stamp: 'LL 7/5/2021 01:45:28'!
buscar: entradaDeDirectorioAEncontrar

	^entradasDeDirectorio detect: [ :entradaDeDirectorio | entradaDeDirectorio = entradaDeDirectorioAEncontrar ]! !

!Sistema methodsFor: 'as yet unclassified' stamp: 'LL 7/5/2021 01:53:17'!
ejemplo

	| entradaEncontrada |
	entradaEncontrada := self buscar: (EntradaDeDirectorio para: (Persona deNombre: 'Juan' yApellido: 'Perez')).
	^entradaEncontrada ! !

!Sistema methodsFor: 'as yet unclassified' stamp: 'LL 7/5/2021 01:46:43'!
initialize

	entradasDeDirectorio := OrderedCollection with: (EntradaDeDirectorio para: (Persona deNombre: 'Juan'  yApellido: 'Perez'))! !
