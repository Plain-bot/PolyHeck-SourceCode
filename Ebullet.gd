extends Area2D

const SPEED = 150
var velocity = Vector2()
var direction = 1

func _physics_process(delta):
	velocity.x = SPEED * delta * direction
	translate(velocity)

func _on_Ebullet_body_entered(body):
	queue_free()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	
##I suck at making enenmys shoot... deal with this...
#^Maybe you smart guys can fix the enemy shooting thing
