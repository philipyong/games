extends KinematicBody2D

#Script: Ambulance.gd
var speed = 1
var motion = Vector2()

func get_input():
	motion = Vector2()
	motion.x -= 1 
	var nScore = 1
	if get_tree().get_root().get_node("/root/Main/Label").score == 0:
		nScore = 1
	else:
		nScore = get_tree().get_root().get_node("/root/Main/Label").score
	
	#speed = speed + (nScore*0.05)
	motion = motion.normalized() * speed * (nScore+1)/2
	
func _physics_process(delta):
	get_input()
	motion = move_and_collide(motion)