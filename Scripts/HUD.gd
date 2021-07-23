extends Node2D

var score = 0 setget set_score
var health = 2 setget set_health

var Robot = false
var Bunny = false

func _process(_delta): # Was suppose to hide score but didnt work... maybe u geniuses can do it tho
	get_node("/root/Hud/Display/SCORE").show()
	get_node("/root/Hud/Display/HEALTH").show()
	get_node("/root/Hud/Display/info").show()
	
	if get_tree().current_scene.name == "Menu":
		get_node("/root/Hud/Display/SCORE").hide()
		get_node("/root/Hud/Display/HEALTH").hide()
		get_node("/root/Hud/Display/info").hide()
	
	if get_tree().current_scene.name == "lb":
		get_node("/root/Hud/Display/SCORE").hide()
		get_node("/root/Hud/Display/HEALTH").hide()
		get_node("/root/Hud/Display/info").hide()
	
	if get_tree().current_scene.name == "settings":
		get_node("/root/Hud/Display/SCORE").hide()
		get_node("/root/Hud/Display/HEALTH").hide()
		get_node("/root/Hud/Display/info").hide()
	
	if get_tree().current_scene.name == "shstage":
		get_node("/root/Hud/Display/SCORE").hide()
		get_node("/root/Hud/Display/HEALTH").hide()
		get_node("/root/Hud/Display/info").hide()
	
	if get_tree().current_scene.name == "bustage":
		get_node("/root/Hud/Display/SCORE").hide()
		get_node("/root/Hud/Display/HEALTH").hide()
		get_node("/root/Hud/Display/info").hide()
	
	if get_tree().current_scene.name == "cs":
		get_node("/root/Hud/Display/SCORE").hide()
		get_node("/root/Hud/Display/HEALTH").hide()
		get_node("/root/Hud/Display/info").hide()
	
	if get_tree().current_scene.name == "startup":
		get_node("/root/Hud/Display/SCORE").hide()
		get_node("/root/Hud/Display/HEALTH").hide()
		get_node("/root/Hud/Display/info").hide()
			
	if get_tree().current_scene.name == "Gameover":
		get_node("/root/Hud/Display/SCORE").show()
		get_node("/root/Hud/Display/HEALTH").show()
	pass
	
	if get_tree().current_scene.name == "UnyahzimA":
		Robot = true

func set_score(value):
	score = value
	get_node("/root/Hud/Display/SCORE").set_text("Score: "+str(score))
	if score == 10:
		health += 1
	if score == 50:
		health += 1
	if score == 100:
		health += 1

func set_health(value):
	health = value
	get_node("/root/Hud/Display/HEALTH").set_text("Lives: "+str(health))
	if health <= -1:
		get_tree().change_scene("res://Gameover.tscn")
		$Display/Timer.start()


func _on_Timer_timeout():
	score = 5
	health = 2
		
	get_node("/root/Hud/Display/SCORE").set_text("Score: "+str(score))
	get_node("/root/Hud/Display/HEALTH").set_text("Lives: "+str(health))
