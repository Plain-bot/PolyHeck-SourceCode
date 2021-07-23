extends Area2D

func get_input():
	if Input.is_action_just_pressed("attack"):
		$AnimationPlayer.play("Hit")
