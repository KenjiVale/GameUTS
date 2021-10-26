
extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	LifeCounter.life = 3 # Replace with function body.
func _physics_process(delta):
	if (LifeCounter.life == 2):
		$hrt3.hide()
	if (LifeCounter.life == 1):
		$hrt2.hide()
	if (LifeCounter.life == 0):
#		$Sprite.hide()
		get_tree().reload_current_scene()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
