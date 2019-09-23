extends Node

export(String, FILE, "*.tscn") var world_scene

func _physics_process(delta):
	var left = get_parent().get_node("gateLeft").check
	var right = get_parent().get_node("gateRight").check
	if left == true:
		if right == true:
			get_tree().change_scene(world_scene)
	pass