extends "res://Scripts/HUD.gd"

var vel = Vector2(0, 0)

func _on_Area2D_body_entered(body):
	if body.name == "Player1":
		get_node("/root/Hud").health -= 1
		get_node("/root/Hud").score -= 1
	if body.name == "Player2":
		get_node("/root/Hud").health -= 1
		get_node("/root/Hud").score -= 1
	pass

func _on_Voxiz_area_entered(area):
	if area.name == "bullet":
		get_node("/root/Hud").score += 5
		#$flash.show()
		$hit.play()
		$Timer.start()
		$CollisionShape2D.disabled = true
	if area.name == "Sword":
		get_node("/root/Hud").score += 5
		#$flash.show()
		$hit.play()
		$Timer.start()
		$CollisionShape2D.disabled = true


func _on_Timer_timeout():
	queue_free()
