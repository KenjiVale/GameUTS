extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$startButton.grab_focus()
	$Label2.text = "Your Score : " + str($"/root/VarPoint".point)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_quitButton_pressed():
	get_tree().quit() # Replace with function body.


func _on_startButton_pressed():
	get_tree().change_scene("res://world.tscn")
