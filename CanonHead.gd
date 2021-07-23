extends KinematicBody2D

var dir = Vector2()
var player
var bullet = preload("res://Ebullet.tscn")
export var offset = 20
const SPEED = 50

func _on_hurtbox_area_entered(area):
	if area.name == "bullet":
		$AnimatedSprite.play("death")
		$hit.play()
		$wait.start()
		$CollisionShape2D.set_deferred("disabled", true)
	if area.name == "Sword":
		$AnimatedSprite.play("death")
		$wait.start()
		$CollisionShape2D.set_deferred("disabled", true)
	if area.name == "axe2":
		$wait.start()

func _on_hurtbox_body_entered(body):
	pass # Replace with function body.

func _physics_process(delta):
	dir = _get_dir(player)
	move_and_slide(dir * SPEED)
	
func _ready():
	player = get_parent().get_child(2)
	dir = _get_dir(player)

func _get_dir(target):
	return (target.position - position).normalized()

#func _on_Timer_timeout():
	#dir = _get_dir(player)
	#var b = bullet.instance()
	#get_parent().add_child(b)
	#b.position = position + dir * offset
	#b.dir = dir


func _on_wait_timeout():
	queue_free()
