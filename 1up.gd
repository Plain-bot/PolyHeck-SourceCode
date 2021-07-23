extends "res://Scripts/HUD.gd"

func _on_1up_body_entered(body):
	if body.name == "Player1":
		$AudioStreamPlayer2D.play()
		get_node("/root/Hud").health += 1
		$Timer.start()
	if body.name == "Player2":
		$AudioStreamPlayer2D.play()
		get_node("/root/Hud").health += 1
		$Timer.start()
	pass

func _on_Timer_timeout():
	queue_free()
