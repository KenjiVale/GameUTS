extends Area2D


signal brain_keambil

func _on_coin_body_entered(body):
	if (body is KinematicBody2D):
		$AnimationPlayer.play("New Anim")
	 # Replace with function body.
func _die():
	emit_signal("brain_keambil")
	queue_free()
