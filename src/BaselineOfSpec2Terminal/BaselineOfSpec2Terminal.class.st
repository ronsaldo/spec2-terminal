Class {
	#name : #BaselineOfSpec2Terminal,
	#superclass : #BaselineOf,
	#category : #BaselineOfSpec2Terminal
}

{ #category : #baselines }
BaselineOfSpec2Terminal >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec
			package: #'PTerm-Protocol' with: [].
		spec
			package: #'PTerm-UI' with: [spec requires: #(#'PTerm-Protocol')].
		spec
			package: #'Spec2-Terminal' with: [].
		spec
			package: #'Spec2-Terminal-Morphic' with: [
				spec requires: #(#'Spec2-Terminal' #'PTerm-UI')
			].
	].
]
