extends Area2D

const SPEED = -10000
var velocity = Vector2()
var direction = 1

func _physics_process(delta):
	velocity.x = SPEED * delta
	
func _on_axe_timeout():
	translate(velocity)
	$Timer.start()

func _on_Timer_timeout():
	queue_free()
