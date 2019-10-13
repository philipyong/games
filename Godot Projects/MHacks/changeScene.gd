extends Node

export(String, FILE, "*.tscn") var world_scene

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_shift"):
			
			get_tree().change_scene(world_scene)
	pass