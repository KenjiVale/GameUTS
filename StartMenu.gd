extends Control

func _ready():
	$startButton.grab_focus()

func _on_startButton_pressed():
	get_tree().change_scene("res://world.tscn")
	

func _on_quitButton_pressed():
	get_tree().quit()
