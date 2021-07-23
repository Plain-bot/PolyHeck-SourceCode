extends Control

func _on_clear_pressed():
	$AnimationPlayer/Label1.hide()
	$AnimationPlayer/Label.hide()

func _ready():
	$AnimationPlayer.play("dialog")
