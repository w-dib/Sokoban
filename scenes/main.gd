extends Node2D

@onready var reset: TextureButton = $CanvasLayer/Reset
@onready var score_label: Label = $CanvasLayer/ScoreLabel
@onready var winning_label: Label = $CanvasLayer/WinningLabel
@onready var player: Area2D = $Player
@onready var crates: Node2D = $Crates
@onready var goals: Node2D = $Goals

@export var level_winning_score: int = 6

func _ready() -> void:
	Globals.connect("score_changed", update_score)
	score_label.text = " 0/" + str(level_winning_score) + " crates placed"

func _process(delta: float) -> void:
	if Globals.current_score == level_winning_score:
		winning_label.show()
		reset.hide()
		score_label.hide()
		goals.hide()
		crates.hide()
		player.hide()
		
func _on_texture_button_pressed() -> void:
	get_tree().reload_current_scene()

func _on_texture_button_mouse_entered() -> void:
	reset.scale *= 1.1

func _on_texture_button_mouse_exited() -> void:
	reset.scale /= 1.1

func update_score() -> void:
		score_label.text = str(Globals.current_score) + " / " + str(level_winning_score) + " crates placed"
