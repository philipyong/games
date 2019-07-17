extends KinematicBody2D

#Script: Ambulance.gd
var speed = 2
var motion = Vector2()

func get_input():
	motion = Vector2()
	motion.x -= 1
	motion = motion.normalized() * speed
	
func _physics_process(delta):
	get_input()
	motion = move_and_collide(motion)