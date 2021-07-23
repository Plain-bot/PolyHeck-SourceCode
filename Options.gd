extends Button

func _on_Options_pressed():
	$Timer2.start()
	$AudioStreamPlayer2.play()

func _on_Timer2_timeout():
	get_tree().change_scene("res://settings.tscn")
