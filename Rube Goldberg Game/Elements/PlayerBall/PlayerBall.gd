extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if self.linear_velocity.length() < 0.1:
			print("Ball Stoped")
			get_tree().change_scene("res://TitleScene/TitleScene.tscn")
	pass

func _integrate_forces(state):
	var magnets = get_tree().get_nodes_in_group("magnets")
	for m in magnets:
		var distance = (position - m.position).length()
		var strength = m.STRENGTH * 2000000 * state.step/(distance * distance)
		var direction = (m.position - position).normalized()
		state.apply_central_impulse(direction * strength)
