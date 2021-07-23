extends KinematicBody2D

var velocity = Vector2()

func _physics_process(delta):
	velocity.x = 350
	velocity = move_and_slide(velocity,Vector2.UP)

func _on_Timer_timeout():
	queue_free()
