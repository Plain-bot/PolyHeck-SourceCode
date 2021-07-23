extends "res://Scripts/HUD.gd"

func _ready():
	get_node("/root/Hud/Display/SCORE").set_text("Score: "+str(score))
