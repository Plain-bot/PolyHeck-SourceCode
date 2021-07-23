extends Button

func _on_back_pressed():
	$AudioStreamPlayer2D.play()
	$Timer.start()

func _on_Timer_timeout():
	get_tree().change_scene("res://MainMenu.tscn")
