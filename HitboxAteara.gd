extends "res://Scripts/HUD.gd"

var is_dead = false
var vel = Vector2(0, 0)

func _on_Area2D_body_entered(body):
	if body.name == "Player1":
		get_node("/root/Hud").health -= 0
		get_node("/root/Hud").score += 5
	pass
