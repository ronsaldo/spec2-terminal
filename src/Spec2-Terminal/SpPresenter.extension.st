Extension { #name : #SpPresenter }

{ #category : #'*Spec2-Terminal' }
SpPresenter >> newTerminal [
	^ self instantiate: SpTerminalPresenter
]
