extends "res://Scripts/HUD.gd"

func _on_khitbox_body_entered(body):
	if body.name == "Player1":
		get_node("/root/Hud").health -= 1
		get_node("/root/Hud").score -= 0
		queue_free()
	if body.name == "Player2":
		get_node("/root/Hud").health -= 1
		get_node("/root/Hud").score -= 0
		queue_free()
	pass

func _on_khitbox_area_entered(area):
	if area.name == "bullet":
		get_node("/root/Hud").score += 5
	if area.name == "Sword":
		get_node("/root/Hud").score += 5
