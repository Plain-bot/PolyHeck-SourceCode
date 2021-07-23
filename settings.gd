extends Control

func _ready():
	$AnimationPlayer.play("settingsanim")

func _on_cheatbar_text_entered(new_text):
	if $cheatbar.text == "/scene_SHENDING.tscn":
		get_tree().change_scene("res://SHENDING.tscn")
	if $cheatbar.text == "/scene_BENDING.tscn":
		get_tree().change_scene("res://BENDING.tscn")
	if $cheatbar.text == "/scene_gameinfo.tscn":
		get_tree().change_scene("res://gameinfo.tscn")
	if $cheatbar.text == "/scene_Hexablanka.tscn":
		$AnimationPlayer/title.text = "...Go frick yourself"
	if $cheatbar.text == "/scene_Space.tscn":
		$AnimationPlayer/title.text = "How bout a frick you"
	if $cheatbar.text == "/insert_konami_code":
		get_node("/root/Hud").health = 999999
	if $cheatbar.text == "night of nights":
		$cheatsong.play()
	if $cheatbar.text == "/insert_credits":
		get_tree().change_scene("res://creditsig.tscn")
