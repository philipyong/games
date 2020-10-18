extends Sprite

var car1 = preload("res://Cars/sports_race.png")
var car2 = preload("res://Cars/suv_closed.png")
var car3 = preload("res://Cars/firetruck.png")

func _ready():
	if(global.currentCar == 1):
		change1()
	
	if(global.currentCar ==2):
		change2()
	
	if(global.currentCar == 3):
		change3()

func change1():
	set_texture(car1)
	
func change2():
	set_texture(car2)
	
func change3():
	set_texture(car3)