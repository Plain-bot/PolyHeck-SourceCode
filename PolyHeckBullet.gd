extends KinematicBody2D

var velocity = Vector2()

func _physics_process(delta):
	velocity.y += 10
	velocity = move_and_slide(velocity,Vector2.UP)


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _on_despawnB_area_entered(area):
	if area.name == "despawnB":
		queue_free()


func _on_Timer_timeout():
	queue_free()
