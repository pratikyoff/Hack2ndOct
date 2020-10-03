extends MarginContainer


func _ready():
	get_node("VBoxContainer/VBoxContainer/Button").connect("pressed", self, "onPressDoSomething")
	
func onPressDoSomething():
	print("Button pressed")
