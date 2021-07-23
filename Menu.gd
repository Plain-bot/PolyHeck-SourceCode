extends Button

func _on_Menu_pressed():
	get_node("/root/Hud").health = 2
	get_node("/root/Hud").score = 0
	get_tree().change_scene("res://MainMenu.tscn")
