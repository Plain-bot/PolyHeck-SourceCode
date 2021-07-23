extends Control

var save_path = "user://score.dat"
func save(content):
	var file = File.new()
	file.open("user://score.dat", File.WRITE)
	file.store_var(content)
	file.close()


func load_data():
	var file = File.new()
	file.open("user://score.dat", File.READ)
	var content = file.get_as_text()
	file.close()
	return content

func _on_load_pressed():
	$Label.text = load_data()
