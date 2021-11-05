extends Area2D

func _on_jatuh_body_entered(body):
	if (body.name == "Player"):
		LifeCounter.life -= 1 
		body.global_position = Vector2(204.317,551.537)
#		get_tree().change_scene("res://world.tscn")
		
		# Replace with function body.
