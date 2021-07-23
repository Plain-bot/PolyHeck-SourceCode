extends "res://Scripts/HUD.gd"

func _on_Ahitbox_body_entered(body):
	if body.name == "Player1":
		get_node("/root/Hud").health -= 1
		get_node("/root/Hud").score -= 5
	if body.name == "Player2":
		get_node("/root/Hud").health -= 1
		get_node("/root/Hud").score -= 5
	pass


func _on_Ahitbox_area_entered(area):
	if area.name == "bullet":
		get_node("/root/Hud").score += 5
	if area.name == "Sword":
		get_node("/root/Hud").score += 5
	if area.name == "axe2":
		get_node("/root/Hud").score += 15
		
func _input(event):
	if event.is_action_pressed("cheat_2"):
		get_node("/root/Hud").health += 1
