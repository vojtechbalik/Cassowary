Class {
	#name : #ClLinearInequality,
	#superclass : #ClLinearConstraint,
	#category : #'Cassowary-Kernel'
}

{ #category : #testing }
ClLinearInequality >> isFullfilled [
	
	self expression hasNumericValue ifFalse: [ ^ false ].
	^ self expression numericValue >= 0
]

{ #category : #testing }
ClLinearInequality >> isInequality [
	"Answer true if this is an inequality constraint and false otherwise."
	
	^ true
]

{ #category : #printing }
ClLinearInequality >> printOn: aStream [

	self strength printOn: aStream.
	aStream nextPutAll: '('.
	expression printOn: aStream.
	aStream nextPutAll: '>=0)'
]
