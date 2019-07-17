extends Area2D

func _ready():
	add_to_group("PlayerCollider")
	connect("area_enter", self, "_on_area_enter")
	
func _on_area_enter(other):
	if other.is_in_group("AmbulanceCollider"):
		print("COLLIDE")