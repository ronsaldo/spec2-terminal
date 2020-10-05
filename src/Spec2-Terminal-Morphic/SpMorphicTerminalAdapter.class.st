Class {
	#name : #SpMorphicTerminalAdapter,
	#superclass : #SpAbstractMorphicAdapter,
	#category : #'Spec2-Terminal-Morphic'
}

{ #category : #factory }
SpMorphicTerminalAdapter >> buildWidget [
	| newWidget endpoint |
	newWidget := TerminalEmulatorMorph new.
	endpoint := SpMorphicTerminalProtocolEndpoint new.
	endpoint whenWindowSizeChangedDo: [ :windowSize |
		self presenter consoleSize: windowSize
	].
	endpoint whenSendingTextMessageDo: [ :message |
		self presenter sendTextMessagesWith: message
	].

	self presenter whenReceivingTextMessageDo: [ :message |
		message do: [ :c |
			endpoint upcall: c codePoint
		]
	].
	self presenter whenResetDo: [ :message |
		newWidget doResetAndClear
	].

	endpoint asProtocolStack
		push: TerminalEmulatorXterm new;
		push: newWidget;
		install;
		run.
	^ newWidget
]
