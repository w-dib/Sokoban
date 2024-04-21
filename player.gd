extends Area2D

@onready var ray: RayCast2D = $RayCast2D
@onready var sprite_2d: Sprite2D = $Sprite2D

var tile_size = 64
var inputs = {"Right": Vector2.RIGHT,
			"Left": Vector2.LEFT,
			"Up": Vector2.UP,
			"Down": Vector2.DOWN}

#func _ready():
	#position = position.snapped(Vector2.ONE * tile_size)
	#position += Vector2.ONE * tile_size/2

func _unhandled_input(event):
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			move(dir)

func move(dir):
	ray.target_position = inputs[dir] * tile_size
	ray.force_raycast_update()
	if ray.is_colliding():
		var collider = ray.get_collider()
		if collider.is_in_group("Crate"):
			collider.crate_ray.target_position = inputs[dir] * tile_size
			ray.force_raycast_update()
			if !collider.crate_ray.is_colliding():
				collider.global_position += inputs[dir] * tile_size
	if !ray.is_colliding():
		position += inputs[dir] * tile_size

