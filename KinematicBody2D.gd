extends KinematicBody2D

export (int) var speed = 700
export (int) var jump_speed = -1200
export (int) var gravity = 4000
export (float, 0, 1.0) var friction = 0.1
export (float, 0, 1.0) var acceleration = 0.25
var velocity = Vector2.ZERO

func get_input():
	velocity.x = 0
	var dir = 0
	if Input.is_action_pressed("walk_right"):
		dir += 1
		velocity.x += speed
		$Boxy.flip_h = false
		$Boxy.play("walk")
	elif Input.is_action_pressed("walk_left"):
		velocity.x -= speed
		dir -= 1
		$Boxy.flip_h = true
		$Boxy.play("walk")
	else:
		$Boxy.play("idle")
		
	if dir != 0:
		velocity.x = lerp(velocity.x, dir * speed, acceleration)
	else:
		velocity.x = lerp(velocity.x, 0, friction)

func _physics_process(delta):
	get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			velocity.y = jump_speed

