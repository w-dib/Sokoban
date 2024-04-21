class_name Crate
extends CharacterBody2D

@onready var crate_ray: RayCast2D = $RayCast2D

var tile_size = 64

func _ready():
	position = position.snapped(Vector2.ONE * tile_size)
	position += Vector2.ONE * tile_size/2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
