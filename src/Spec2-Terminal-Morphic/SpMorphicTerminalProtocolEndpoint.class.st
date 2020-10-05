Class {
	#name : #SpMorphicTerminalProtocolEndpoint,
	#superclass : #ProtocolEndpoint,
	#instVars : [
		'lastSentTextMessage',
		'windowSize'
	],
	#category : #'Spec2-Terminal-Morphic'
}

{ #category : #protocol }
SpMorphicTerminalProtocolEndpoint >> close [
	"Do nothing here"
]

{ #category : #protocol }
SpMorphicTerminalProtocolEndpoint >> downcall: data [
	Transcript show: 'TODO: downcall '; show: data; cr. 
]

{ #category : #initialization }
SpMorphicTerminalProtocolEndpoint >> initialize [
	super initialize.
	lastSentTextMessage := nil asValueHolder.
	windowSize := (0@0) asValueHolder.
]

{ #category : #protocol }
SpMorphicTerminalProtocolEndpoint >> isConnected [
	^ true
]

{ #category : #protocol }
SpMorphicTerminalProtocolEndpoint >> name [
	^ self class name
]

{ #category : #protocol }
SpMorphicTerminalProtocolEndpoint >> note: name with: val [
	super note: name with: val.
	name = #windowSize ifTrue: [ windowSize value: val ].
]

{ #category : #protocol }
SpMorphicTerminalProtocolEndpoint >> run [
]

{ #category : #enumerating }
SpMorphicTerminalProtocolEndpoint >> whenSendingTextMessageDo: aBlock [
	lastSentTextMessage whenChangedDo: aBlock
]

{ #category : #enumerating }
SpMorphicTerminalProtocolEndpoint >> whenWindowSizeChangedDo: aBlock [
	windowSize whenChangedDo: aBlock
]
