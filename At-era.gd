extends KinematicBody2D

var dir = Vector2()
var player
export var offset = 20
const SPEED = 150

func _physics_process(delta):
	dir = _get_dir(player)
	move_and_slide(dir * SPEED)
	
func _ready():
	player = get_parent().get_child(2)
	dir = _get_dir(player)

func _get_dir(target):
	return (target.position - position).normalized()


func _on_Ahitbox_area_entered(area):
	if area.name == "bullet":
		$AnimatedSprite.play("dead")
		$Timer.start()
		$CollisionShape2D.set_deferred("disabled", true)
		#$Ahitbox/CollisionShape2D.disabled = true
	if area.name == "Sword":
		$hit.play()
		$AnimatedSprite.play("dead")
		$Timer.start()
		$CollisionShape2D.set_deferred("disabled", true)
		#$Ahitbox/CollisionShape2D.disabled = true
	if area.name == "axe2":
		$Timer.start()


func _on_Timer_timeout():
	queue_free()
