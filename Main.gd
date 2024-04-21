extends Node2D

@onready var texture_button: TextureButton = $CanvasLayer/TextureButton


func _on_texture_button_pressed() -> void:
	get_tree().reload_current_scene()


func _on_texture_button_mouse_entered() -> void:
	texture_button.scale *= 1.1
	



func _on_texture_button_mouse_exited() -> void:
	texture_button.scale /= 1.1
