extends Label

var score = 0 setget set_score

func _ready():
	add_to_group("Score")
	pass # Replace with function body.

func set_score(new_value):
	#print("score")
	score = new_value
	set_text(str(score))
	#var hscore = get_tree().get_nodes_in_group("highscore")[0].bestscore
	#print("hscore")
	#if score > hscore:
	#	get_tree().get_nodes_in_group("highscore")[0].bestscore = score
	pass