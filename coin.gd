extends Area2D


signal brain_keambil

func _on_coin_body_entered(body):
	$AnimationPlayer.play("New Anim")
	 # Replace with function body.
func _die():
	emit_signal("brain_keambil")
	queue_free()
