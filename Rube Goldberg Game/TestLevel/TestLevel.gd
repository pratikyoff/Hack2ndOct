extends Node2D

func _ready():
	var magnet = load("Magnet.tscn").instance()
	magnet.position = Vector2(500,500)
	add_child(magnet)
	var playerBall = load("PlayerBallScene/PlayerBall.tscn").instance()
	playerBall.position = Vector2(300,200)
	add_child(playerBall)
