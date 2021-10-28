extends Area2D

func _on_jatuh_body_entered(body):
	if (body.name == "Player"):
		LifeCounter.life -= 1 
		# Replace with function body.
