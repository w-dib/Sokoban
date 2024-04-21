extends Node2D

@onready var reset: TextureButton = $CanvasLayer/Reset
@onready var score_label: Label = $CanvasLayer/ScoreLabel


@export var level_winning_score: int = 6

func _ready() -> void:
	Globals.winning_score = level_winning_score
	score_label.text = str(Globals.current_score) + " / " + str(level_winning_score) + " crates placed"

func _on_texture_button_pressed() -> void:
	get_tree().reload_current_scene()


func _on_texture_button_mouse_entered() -> void:
	reset.scale *= 1.1

func _on_texture_button_mouse_exited() -> void:
	reset.scale /= 1.1
