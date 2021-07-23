extends "res://Scripts/HUD.gd"

func _on_Timer_timeout():
	get_node("/root/Hud").health += 1
	$Timer.start()
