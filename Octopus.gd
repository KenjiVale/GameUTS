extends Node



func _on_Area2D_body_entered(body):
	if (body.name == "Player"):
		LifeCounter.life -= 1 # Replace with function body.
