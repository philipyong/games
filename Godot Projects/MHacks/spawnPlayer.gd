extends Node 

export(String, FILE, "*.tscn") var world_scene

func _ready():
	var player = Vector2(get_node("res://mainscene.tscn").x, get_node("res://mainscene.tscn").get("y"))
	var flagPacked = preload("res://Player.tscn")
	#var flagPrev = Vector2()
	var flag = flagPacked.instance()
	
	#var pos = Vector2(468, 688)
	
	#var newPos = pos # This here sets pos based on the previous X value.
	
	flag.set_position(player)
	#flagPrev = newPos #Update the previous in each flag spawn.
	#layer = newPos
	add_child(flag)
	
#func _physics_process(delta):
	#print(get_node("res://Player.gd").outmo)
	#player = (get_node("res://Player.gd").outmo)