extends Node2D

const magnet = preload("res://Elements/Magnet/Magnet.tscn")
const playerBall = preload("res://Elements/PlayerBall/PlayerBall.tscn")

var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()

	var m = magnet.instance()
	m.position = Vector2(500,500)
	m.z_index = -1
	add_child(m)
	
	for _n in range(10):
		var pb = playerBall.instance()
		pb.position = Vector2(rng.randf_range(150, 1200), rng.randf_range(150, 250))
		pb.z_index = -1
		add_child(pb)
	
