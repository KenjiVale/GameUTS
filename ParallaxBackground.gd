extends ParallaxBackground


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	$ParallaxLayer.motion_offset.x -= 5
	$ParallaxLayer2.motion_offset.x -= 5
	$ParallaxLayer3.motion_offset.x -= 5
	$ParallaxLayer4.motion_offset.x -= 5
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
