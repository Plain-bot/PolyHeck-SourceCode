extends "res://Scripts/HUD.gd"

func _on_RigidBody2D_body_entered(body):
	get_node("/root/Hud").score += 10


func _on_body_area_entered(area):
	if area.name == "bullet":
		get_node("/root/Hud").score += 10
	if area.name == "Sword":
		get_node("/root/Hud").score += 10
