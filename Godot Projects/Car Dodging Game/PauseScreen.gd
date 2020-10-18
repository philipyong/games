extends Control

func _ready():
	$MarginContainer/CenterContainer/VBoxContainer/Button.grab_focus()
	
func _physics_process(delta):
	if $MarginContainer/CenterContainer/VBoxContainer/Button.is_hovered() == true:
		$MarginContainer/CenterContainer/VBoxContainer/Button.grab_focus()

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		$MarginContainer/CenterContainer/VBoxContainer/Button.grab_focus()
		get_tree().paused = not get_tree().paused
		visible = not visible

func _on_Button_pressed():
	get_tree().paused = not get_tree().paused
	visible = not visible
