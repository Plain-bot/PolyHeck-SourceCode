extends KinematicBody2D

var dir = Vector2()
var player
export var offset = 20
const SPEED = 89

func _physics_process(delta):
	dir = _get_dir(player)
	move_and_slide(dir * SPEED)
	
func _ready():
	player = get_parent().get_child(2)
	dir = _get_dir(player)

func _get_dir(target):
	return (target.position - position).normalized()
