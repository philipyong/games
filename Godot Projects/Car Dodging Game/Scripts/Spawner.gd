extends Node

#Script: Spawner.gd

const spawn_x = 240
const ambulance = preload("res://Ambulance.tscn")

func _ready():
	spawn()
	
func spawn():
	while true:
		randomize()
		var car = ambulance.instance()
		var pos = Vector2()
		pos.x = spawn_x
		pos.y = rand_range(0+35, get_viewport().get_visible_rect().size.y-55)
		car.set_position(pos)
		get_node("Container").add_child(car)
		yield(get_tree().create_timer(rand_range(0.7, 1.25)), "timeout")
		
