extends KinematicBody2D

export (int) var speed = 200

const BULLET = preload("res://bullet.tscn")

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("SRIGHT"):
		$Sprite.play("run")
		velocity.x += 1
		$Sprite.flip_h = false
		if sign($Muzzle.position.x) == -1:
			$Muzzle.position.x *= -1
	elif Input.is_action_pressed("SLEFT"):
		$Sprite.play("run")
		velocity.x -= 1
		$Sprite.flip_h = true
		if sign($Muzzle.position.x) == 1:
			$Muzzle.position.x *= -1
	if Input.is_action_pressed("SDOWN"):
		$Sprite.play("run")
		velocity.y += 1
	if Input.is_action_pressed("SUP"):
		$Sprite.play("run")
		velocity.y -= 1
	if Input.is_action_just_pressed("SATTACK"):
		$Sprite.play("shoot")
		$gun.play()
		var bullet = BULLET.instance()
		if sign($Muzzle.position.x) == 1:
			bullet.set_bullet_direction(1)
		else:
			bullet.set_bullet_direction(-1)
		get_parent().add_child(bullet)
		bullet.position = $Muzzle.global_position
	#if Input.is_action_just_pressed("cheat_1"):
		#$Cheat.show()
		#$CollisionShape2D.disabled = true
	#if Input.is_action_just_pressed("debug"):
		#$ColorRect.show()
		
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)

##MISC
func _on_enemy_pressed():
	$Sprite.play("debug")


func _on_invert_pressed():
	$Sprite.modulate = Color(143, 188, 143)


func _on_geddan_pressed():
	$Sprite.rotation_degrees = rand_range(1, 900)


func _on_offset_pressed():
	$Sprite.play("offset")

