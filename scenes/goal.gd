extends Area2D

var tile_size = 64

#func _ready():
	#position = position.snapped(Vector2.ONE * tile_size)
	#position += Vector2.ONE * tile_size/2
	
func _on_body_entered(body: Node2D) -> void:
	if body is Crate:
		Globals.current_score += 1
		print(Globals.current_score)

func _on_body_exited(body: Node2D) -> void:
	if body is Crate:
		if Globals.current_score > 0:
			Globals.current_score -= 1
