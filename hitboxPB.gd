extends "res://Scripts/HUD.gd"

var ending = true

func _on_hitbox_area_entered(area):
	if area.name == "bullet":
		get_node("/root/Hud").score += 10
	if area.name == "Sword":
		get_node("/root/Hud").score += 10

func _on_hitbox_body_entered(body):
	if body.name == "Player1":
		get_node("/root/Hud").health -= 2
		get_node("/root/Hud").score -= 10
	if body.name == "Player2":
		get_node("/root/Hud").health -= 1
		get_node("/root/Hud").score -= 10
	pass

func _input(event):
	if event.is_action_pressed("cheat_1"):
		ending = false
	if event.is_action_pressed("cheat_2"):
		ending = false
	if event.is_action_pressed("debug"):
		ending = false
		
func _ready():
	if get_node("/root/Hud").health >= 999999:
		ending = false
