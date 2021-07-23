extends "res://Scripts/HUD.gd"

func _on_Ahitbox_area_entered(area):
	if area.name == "bullet":
		get_node("/root/Hud").score += 5
	if area.name == "Sword":
		get_node("/root/Hud").score += 5

func _on_firehitbox_body_entered(body):
	if body.name == "Player1":
		get_node("/root/Hud").health -= 1
		get_node("/root/Hud").score -= 5
	if body.name == "Player2":
		get_node("/root/Hud").health -= 1
		get_node("/root/Hud").score -= 5
	pass

func _on_firehitbox_area_entered(area):
	if area.name == "Voxiz":
		get_node("/root/Hud").score += 5
