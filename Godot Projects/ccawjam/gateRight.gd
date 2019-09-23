extends Area2D

var end = load("res://levelComplete.gd").new()
var check = false
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player2":
			check = true
			pass