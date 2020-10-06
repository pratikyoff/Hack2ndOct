extends MarginContainer

func _ready():
	get_node("VBoxContainer/VBoxContainer/ExitButton").connect("pressed", self, "onExitButtonPress")
	get_node("VBoxContainer/VBoxContainer/Button").connect("pressed", self, "onPlayButtonPress")
	get_node("VBoxContainer/VBoxContainer/ExitButton").connect("pressed", self, "onExitButtonPress")
	
func onExitButtonPress():
	get_tree().quit()

func onPlayButtonPress():
	get_tree().change_scene("res://Levels/TestLevel/TestLevel.tscn")
