extends "res://Scripts/HUD.gd"

func _on_hitbox_area_entered(area):
	if area.name == "Ebullet":
		get_node("/root/Hud").health -= 1
		get_node("/root/Hud").score -= 1
