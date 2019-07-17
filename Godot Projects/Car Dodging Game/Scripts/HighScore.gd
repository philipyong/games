extends Label

#var bestscore = 0 setget set_bestscore

func _ready():
	add_to_group("highscore")
	pass 
	
#func set_bestscore(new_value):
#	print("score")
#	bestscore = new_value
#	set_text(str(bestscore))
#	pass