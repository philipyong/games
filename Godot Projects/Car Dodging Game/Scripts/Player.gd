extends KinematicBody2D

#Script: Player.gd
var speed = 2
var top_limit = 42
var bot_limit = 116
var motion = Vector2()

func get_input():
	motion = Vector2()
	if Input.is_action_pressed("ui_up"):
		motion.y -= 1
	if Input.is_action_pressed("ui_down"):
		motion.y += 1
	motion = motion.normalized() * speed
	
func _physics_process(delta):
	get_input()
	if get_position().y >= bot_limit || get_position().y <= top_limit :
		if get_position().y >= bot_limit && motion.y == -speed:
			motion = move_and_collide(motion)
		elif get_position().y <= top_limit && motion.y == speed:
			motion = move_and_collide(motion)
	else:
		motion = move_and_collide(motion)

func _on_Up_pressed():
	print("up")
	motion = Vector2()
	motion.y -= 1
	motion = motion.normalized() * speed
	if get_position().y >= bot_limit || get_position().y <= top_limit :
		if get_position().y >= bot_limit && motion.y == -speed:
			motion = move_and_collide(motion)
		elif get_position().y <= top_limit && motion.y == speed:
			motion = move_and_collide(motion)
	else:
		motion = move_and_collide(motion)
	pass # Replace with function body.


func _on_Down_pressed():
	print("down")
	motion = Vector2()
	motion.y += 1
	motion = motion.normalized() * speed
	if get_position().y >= bot_limit || get_position().y <= top_limit :
		if get_position().y >= bot_limit && motion.y == -speed:
			motion = move_and_collide(motion)
		elif get_position().y <= top_limit && motion.y == speed:
			motion = move_and_collide(motion)
	else:
		motion = move_and_collide(motion)
	pass # Replace with function body.
