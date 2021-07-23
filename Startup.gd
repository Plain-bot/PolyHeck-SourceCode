extends Control

func _on_VideoPlayer_finished():
	get_tree().change_scene("res://MainMenu.tscn")

func _input(event):
	if event.is_action_pressed("enter"):
		get_tree().change_scene("res://MainMenu.tscn")
