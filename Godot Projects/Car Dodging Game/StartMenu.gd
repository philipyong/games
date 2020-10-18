extends Control

func _on_Button_pressed():
	get_tree().change_scene("res://Main.tscn")

func _on_Button2_pressed():
	global.currentCar = 1

func _on_Button3_pressed():
	global.currentCar = 2

func _on_Button4_pressed():
	global.currentCar = 3
