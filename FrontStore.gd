extends TextureButton

func _on_Timer_timeout():
	get_tree().change_scene("res://StoreFront.tscn")
	
func _on_FrontStore_pressed():
	$AudioStreamPlayer.play()
	$Timer.start()
