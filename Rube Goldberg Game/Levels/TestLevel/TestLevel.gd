extends Node2D

const magnet = preload("res://Elements/Magnet/Magnet.tscn")
const playerBall = preload("res://Elements/PlayerBall/PlayerBall.tscn")
const TIME_TO_RESET = 3.0
signal gameEnded
var pbs

var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()

	var m = magnet.instance()
	m.position = Vector2(500,200)
	m.z_index = -1
	add_child(m)
	
	
	for _n in range(1):
		var pb = playerBall.instance()
		pbs = pb
		pb.position = Vector2(rng.randf_range(150, 1200), rng.randf_range(150, 250))
		pb.set_axis_velocity(Vector2(1,1))
		#pb.z_index = -1
		add_child(pb)
		
func _physics_process(delta):
			
	if pbs.linear_velocity.length() < 0.1:
			print("Ball Stoped")
			get_tree().change_scene("res://TitleScene/TitleScene.tscn")
