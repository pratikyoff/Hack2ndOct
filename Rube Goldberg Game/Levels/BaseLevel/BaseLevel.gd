extends MarginContainer

onready var parentLevel = get_node("../")
func _ready():
	$HBoxContainer/Pause.connect("pressed", self, "pauseTree")
	$HBoxContainer/Play.connect("pressed", self, "playTree")
	
func pauseTree():
	print("paused")
	get_tree().paused = true

	
func resumeTree():
	print("resumed")
	get_tree().paused = false
