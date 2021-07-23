extends "res://Scripts/HUD.gd"

var is_dead = false
var vel = Vector2(0, 0)

func _on_hurtbox_body_entered(body):
	if body.name == "Player1":
		get_node("/root/Hud").health -= 1
		get_node("/root/Hud").score -= 2
	if body.name == "Player2":
		get_node("/root/Hud").health -= 1
		get_node("/root/Hud").score -= 2
	pass


func _on_hurtbox_area_entered(area):
	if area.name == "bullet":
		get_node("/root/Hud").score += 3
	if area.name == "Sword":
		get_node("/root/Hud").score += 3
	if area.name == "axe2":
		get_node("/root/Hud").score += 15
