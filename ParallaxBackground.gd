extends ParallaxBackground


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	var speed = 3
	$ParallaxLayer.motion_offset.x -= speed
	$ParallaxLayer2.motion_offset.x -= speed
	$ParallaxLayer3.motion_offset.x -= speed
	$ParallaxLayer4.motion_offset.x -= speed
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
