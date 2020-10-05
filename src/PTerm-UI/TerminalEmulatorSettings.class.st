Class {
	#name : #TerminalEmulatorSettings,
	#superclass : #Object,
	#classVars : [
		'DefaultFont',
		'DefaultPalette'
	],
	#category : #'PTerm-UI'
}

{ #category : #accessing }
TerminalEmulatorSettings class >> defaultFont [
	^ DefaultFont ifNil: [ DefaultFont := LogicalFont familyName: 'DejaVu Sans Mono' pointSize: 10 ]
]

{ #category : #accessing }
TerminalEmulatorSettings class >> defaultFont: aFont [
	^ DefaultFont := aFont
]

{ #category : #accessing }
TerminalEmulatorSettings class >> defaultPalette [
	^ DefaultPalette ifNil: [ DefaultPalette := PTermSolarizedTheme dark ]
]

{ #category : #accessing }
TerminalEmulatorSettings class >> defaultPalette: aPalette [
	^ DefaultPalette := aPalette
]
