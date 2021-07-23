extends Area2D

func _on_Area2D_body_entered(body):
	if body.name == "Player1":
		get_node("/root/Hud").score += 10
		$Timer.start()
		$axe.start()
	if body.name == "Player2":
		get_node("/root/Hud").score += 10
		$Timer.start()
		$axe.start()

func _on_Timer_timeout():
	queue_free()
