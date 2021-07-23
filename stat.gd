extends "res://Scripts/HUD.gd"

func _on_Timer_timeout():
	queue_free()


func _on_stat_body_entered(body):
	if body.name == "Player1":
		$AudioStreamPlayer2D.play()
		get_node("/root/Hud").score += 15
		$Timer.start()
	if body.name == "Player2":
		$AudioStreamPlayer2D.play()
		get_node("/root/Hud").score += 15
		$Timer.start()
	pass
