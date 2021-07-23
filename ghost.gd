extends KinematicBody2D

var velocity = Vector2()

func _physics_process(delta):
	$Timer.start()
	velocity.x += 50
	velocity = move_and_slide(velocity,Vector2.UP)

func _on_Timer_timeout():
	queue_free()
