Class {
	#name : #SpTerminalPresenter,
	#superclass : #SpAbstractWidgetPresenter,
	#instVars : [
		'lastReceivedTextMessage',
		'resetEvent',
		'lastSentTextMessage',
		'consoleSize'
	],
	#category : #'Spec2-Terminal'
}

{ #category : #specs }
SpTerminalPresenter class >> adapterName [

	^ #TerminalAdapter
]

{ #category : #specs }
SpTerminalPresenter class >> title [

	^ 'Terminal'
]

{ #category : #accessing }
SpTerminalPresenter >> consoleSize [
	^ consoleSize
]

{ #category : #accessing }
SpTerminalPresenter >> consoleSize: aPoint [
	consoleSize value: aPoint
]

{ #category : #accessing }
SpTerminalPresenter >> initialize [
	super initialize.
	self flag: 'Use proper events for this'.
	resetEvent := false asValueHolder.
	lastReceivedTextMessage := nil asValueHolder.
	lastSentTextMessage := nil asValueHolder.
	consoleSize := nil asValueHolder.
]

{ #category : #initialization }
SpTerminalPresenter >> receiveTextMessage: textMessage [
	lastReceivedTextMessage value: textMessage
]

{ #category : #initialization }
SpTerminalPresenter >> reset [
	resetEvent value: resetEvent value not
]

{ #category : #initialization }
SpTerminalPresenter >> sendTextMessage: aTextMessage [
	lastSentTextMessage value: aTextMessage
]

{ #category : #enumerating }
SpTerminalPresenter >> whenConsoleSizeChangedDo: aBlock [
	consoleSize whenChangedDo: aBlock
]

{ #category : #initialization }
SpTerminalPresenter >> whenReceivingTextMessageDo: aBlock [
	lastReceivedTextMessage whenChangedDo: aBlock
]

{ #category : #enumerating }
SpTerminalPresenter >> whenResetDo: aBlock [
	resetEvent whenChangedDo: aBlock
]

{ #category : #initialization }
SpTerminalPresenter >> whenSendingTextMessageDo: aBlock [
	lastSentTextMessage whenChangedDo: aBlock
]
