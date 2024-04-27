extends Control

@export var level_1: PackedScene

func _on_start_game_pressed() -> void:
	get_tree().change_scene_to_packed(level_1)

func _on_quit_pressed() -> void:
	get_tree().quit()
