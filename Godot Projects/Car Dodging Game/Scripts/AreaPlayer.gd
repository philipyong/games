extends Area2D

func _ready():
	set_process(true)
	add_to_group("PlayerCollider")
	connect("area_entered", self, "_on_area_enter")
	pass
func _on_area_enter(other):
	if other.is_in_group("AmbulanceCollider"):
		#print("COLLIDE")
		get_tree().change_scene("res://StartMenu.tscn")
	if other.is_in_group("Point"):
		#print("Point")
		get_tree().get_nodes_in_group("Score")[0].score += 1