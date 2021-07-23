extends Button

func _on_leaderboard_pressed():
	$AudioStreamPlayer2.play()
	$Timer2.start()

func _on_Timer2_timeout():
	get_tree().change_scene("res://leaderboard.tscn")
