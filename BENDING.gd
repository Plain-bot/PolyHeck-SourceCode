extends Control

func _ready():
	$AnimationPlayer.play("ending")

func _on_clear_pressed():
	$AnimationPlayer/Label2.hide()
	$AnimationPlayer/title.hide()
