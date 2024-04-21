extends Node3D

var cube_scene = preload("res://cube.tscn")

func _ready():
	pass

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
			# Calculate the position to place the cube (simplified here for 0,0,0)
				var cube = cube_scene.instantiate()
				add_child(cube)
				cube.global_position = Vector3(randi_range(-10,10), 0, randi_range(-10,10))  # You would calculate the correct position here
