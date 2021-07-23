extends Control

# PolyHeck Game 3

func _ready():
	$AnimationPlayer.playback_speed = 1.5
	$AnimationPlayer.play("intro")
