extends "res://Scripts/HUD.gd"

func _on_PbulletHB_body_entered(body):
	if body.name == "Player1":
		get_node("/root/Hud").health -= 1
		get_node("/root/Hud").score -= 0
	if body.name == "Player2":
		get_node("/root/Hud").health -= 1
		get_node("/root/Hud").score -= 0
	pass
