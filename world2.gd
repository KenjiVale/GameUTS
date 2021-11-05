extends Node

#var point = $"/root/VarPoint".point
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Coinjml.UpdatePoint($"/root/VarPoint".point)
	pass # Replace with function body.

#func _on_TambahPoint():
#	point += 10
#	$"/root/VarPoint".point = point
#	$Coinjml.UpdatePoint(point)
#	print(point)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
