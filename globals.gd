extends Node

signal score_changed

var winning_score = 6
var current_score = 0:
	set(value):
		current_score = value
		score_changed.emit()
