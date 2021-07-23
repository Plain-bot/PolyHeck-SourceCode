extends KinematicBody2D

var dir = Vector2()
var player
export var offset = 20
const SPEED = 200

func _physics_process(delta):
	dir = _get_dir(player)
	move_and_slide(dir * SPEED)
	
func _ready():
	player = get_parent().get_child(2)
	dir = _get_dir(player)

func _get_dir(target):
	return (target.position - position).normalized()

func _on_khitbox_area_entered(area):
	if area.name == "bullet":
		queue_free()
	if area.name == "Sword":
		queue_free()


func _on_khitbox_body_entered(body):
	if body.name == "Player1":
		$boom.show()
		$SH.play()
		$booms.play()
		$wait.start()
	if body.name == "Player2":
		$boom.show()
		$B.play()
		$booms.play()
		$wait.start()


func _on_wait_timeout():
	queue_free()
