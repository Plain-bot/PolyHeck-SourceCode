extends Button

func _on_Play_pressed():
	$Timer.start()
	$AudioStreamPlayer.play()
	
func _on_Timer_timeout():
	get_tree().change_scene("res://CharacterSelect.tscn")

func _input(event):
	if event.is_action_pressed("infopage"):
		get_tree().change_scene("res://gameinfo.tscn")

