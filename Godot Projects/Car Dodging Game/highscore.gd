extends Node

var bestscore = 0
const filepath = "user://bestscore.data"

func _ready():
	load_bestscore()
	pass 

func load_bestscore():
	var file = File.new()
	if not file.file_exists(filepath): return
	file.open(filepath, File.READ)
	bestscore = file.get_var()
	file.close()
	pass

func save_bestscore():
	var file = File.new()
	file.open(filepath, File.WRITE)
	file.store_var(bestscore)
	file.close()
	pass
	
func set_bestscore(new_value):
	bestscore = new_value
	print(bestscore)
	save_bestscore()
	pass