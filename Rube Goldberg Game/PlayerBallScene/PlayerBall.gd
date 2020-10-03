extends RigidBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
const GRAVITY = Vector2(0, 200)

var acceleration = Vector2()
var velocity = Vector2()

#func _physics_process(delta):
	# gravity
#	acceleration += GRAVITY
	
	# velocity calculation
#	acceleration *= delta
#	velocity += acceleration
	#move_and_slide(velocity)
