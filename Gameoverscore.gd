extends Control

func save(content):
	var file = File.new()
	file.open("user://score.dat", File.WRITE)
	file.store_var(content)
	file.close()

func _on_save_pressed():
	save(get_node("/root/Hud/Display/SCORE").text)
