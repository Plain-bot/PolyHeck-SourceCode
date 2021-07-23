extends KinematicBody2D

export (int) var speed = 350
var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		$Sprite.play("run")
		velocity.x += 1
		$Sprite.flip_h = false
		$Sword/Sprite.rotation_degrees = 270
		$Sword/Sprite.flip_h = false
	elif Input.is_action_pressed("left"):
		$Sprite.play("run")
		velocity.x -= 1
		$Sprite.flip_h = true
		$Sword/Sprite.rotation_degrees = 90
	if Input.is_action_pressed("down"):
		$Sprite.play("run")
		velocity.y += 1
	if Input.is_action_pressed("up"):
		$Sprite.play("run")
		velocity.y -= 1
	if Input.is_action_just_pressed("attack"):
		$Sprite.play("attack")
		$sword.play()
		$Sword/AnimationPlayer.play("Hit")
	if Input.is_action_just_pressed("cheat_1"):
		$CollisionShape2D.disabled = true
		$Label.show()
		$night.play()
		
		
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
