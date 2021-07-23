extends Node2D

var enemy1 = preload("res://At-era.tscn")
var enemy2 = preload("res://CanonHead.tscn")
var enemy3 = preload("res://Voxiz.tscn")
var enemy4 = preload("res://ghost.tscn")
var enemy5 = preload("res://fleto.tscn")
var enemy6 = preload("res://kamakaze.tscn")

func _on_SpawnTimer_timeout():
	var Enemy = enemy1.instance()
	var Enemy2 = enemy2.instance()
	var Enemy3 = enemy3.instance()
	var Enemy4 = enemy4.instance()
	var Enemy5 = enemy5.instance()
	var Enemy6 = enemy6.instance()
	add_child(Enemy)
	add_child(Enemy2)
	add_child(Enemy3)
	add_child(Enemy4)
	add_child(Enemy5)
	add_child(Enemy6)
	Enemy.position = $Spawn.position
	Enemy2.position = $Spawn.position
	Enemy3.position = $Spawn.position
	Enemy4.position = $Spawn.position
	Enemy5.position = $Spawn.position
	Enemy6.position = $Spawn.position
	
	## Lol... went unused... go crazy making ur own stages
#	var area = $SpawnArea
#	var Position = area.rect_position + Vector2(randf() * area.rect_size.x, randf() * area.rect_size.y)
#	$Spawn.position = Position
	
	var nodes = get_tree().get_nodes_in_group("Spawn")
	var node = nodes[randi() % nodes.size()]
	var Position = node.position
	$Spawn.position = Position
