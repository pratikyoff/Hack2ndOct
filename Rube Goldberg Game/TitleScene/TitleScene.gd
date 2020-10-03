extends MarginContainer

func _ready():
	get_node("VBoxContainer/VBoxContainer/ExitButton").connect("pressed", self, "onExitButtonPress")
	
func onExitButtonPress():
	get_tree().quit()
