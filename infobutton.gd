extends Button

func _on_Button_pressed():
	$Popup.popup()
	$Popup.show()


func _on_WindowDialog_about_to_show():
	$Popup.show()
