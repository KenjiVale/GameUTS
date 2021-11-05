extends Area2D



func _on_jatuh2_body_entered(body):
	if (body.name == "Player"):
		LifeCounter.life -= 1 
		body.global_position = Vector2(66.955,9.774)
