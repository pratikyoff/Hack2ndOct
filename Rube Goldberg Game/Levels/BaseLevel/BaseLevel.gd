extends MarginContainer

onready var parentLevel = get_node("../")
func _ready():
	$HBoxContainer/Pause.connect("pressed", self, "pauseTree")
	$HBoxContainer/Play.connect("pressed", self, "resumeTree")
	$HBoxContainer/Retry.connect("pressed", self, "retryLevel")
	
func pauseTree():
	print("paused")
	get_tree().paused = true

	
func resumeTree():
	print("resumed")
	get_tree().paused = false

func retryLevel():
	print("reseting level")
	get_tree().reload_current_scene()

