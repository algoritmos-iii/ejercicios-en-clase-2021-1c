!classDefinition: #CalculadoraDePrecio category: 'Patrones-MethodObject'!
Object subclass: #CalculadoraDePrecio
	instanceVariableNames: 'listaDeProveedores'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-MethodObject'!

!CalculadoraDePrecio methodsFor: 'initialization' stamp: 'LL 7/18/2021 21:47:55'!
initializeAPartirDe: unaListaDeProveedores
	listaDeProveedores := unaListaDeProveedores.! !


!CalculadoraDePrecio methodsFor: 'evaluating' stamp: 'LL 7/18/2021 21:46:42'!
calcular

	| precioBase precioSecundario |
	precioBase := (1 * peso) + 1 * peso.
	precioSecundario := self precioSecundario + precioBase + (40 * peso).
	
	^precioSecundario! !


!CalculadoraDePrecio methodsFor: 'as yet unclassified' stamp: 'LL 7/18/2021 21:46:35'!
precioSecundario

	^23 * peso! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CalculadoraDePrecio class' category: 'Patrones-MethodObject'!
CalculadoraDePrecio class
	instanceVariableNames: ''!

!CalculadoraDePrecio class methodsFor: 'instance creation' stamp: 'LL 7/18/2021 21:47:09'!
aPartirDe: unaListaDeProveedores
	^self new initializeAPartirDe: unaListaDeProveedores! !


!classDefinition: #OrdenDeCompra category: 'Patrones-MethodObject'!
Object subclass: #OrdenDeCompra
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Patrones-MethodObject'!

!OrdenDeCompra methodsFor: 'calcular precio' stamp: 'LL 7/18/2021 21:47:29'!
precioAPartirDe: unaListaDeProveedores
	^(CalculadoraDePrecio aPartirDe: unaListaDeProveedores) calcular! !
