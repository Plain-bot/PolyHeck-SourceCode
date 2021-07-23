extends "res://Scripts/HUD.gd"

func _on_Ahitbox_area_entered(area):
	if area.name == "bullet":
		get_node("/root/Hud").score += 5
	if area.name == "Sword":
		get_node("/root/Hud").score += 5

func _on_ghitbox_body_entered(body):
	if body.name == "Player1":
		$fog.show()
	
func _on_ghitbox_area_entered(area):
	get_node("/root/Hud").score += 1
