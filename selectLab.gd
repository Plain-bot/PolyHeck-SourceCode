extends TextureButton

func _on_Lab_pressed():
	$AudioStreamPlayer.play()
	$Timer.start()

func _on_Timer_timeout():
	get_tree().change_scene("res://LabA.tscn")
