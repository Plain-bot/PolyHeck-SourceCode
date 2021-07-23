extends Node2D

var bullet = preload("res://PolyHeckBullet.tscn")

func _on_SpawnTimer_timeout():
	var Enemy = bullet.instance()
	add_child(Enemy)
	Enemy.position = $Spawn.position
	
	## Lol... went unused... go crazy making ur own stages
#	var area = $SpawnArea
#	var Position = area.rect_position + Vector2(randf() * area.rect_size.x, randf() * area.rect_size.y)
#	$Spawn.position = Position
	
	var nodes = get_tree().get_nodes_in_group("Spawn")
	var node = nodes[randi() % nodes.size()]
	var Position = node.position
	$Spawn.position = Position
