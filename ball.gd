extends RigidBody2D


var initial_velocity = Vector2(-300, 100)
var speed = 500.0

func _ready():
	# Set the initial velocity of the ball
	linear_velocity = initial_velocity

func _physics_process(delta):
	linear_velocity = linear_velocity.normalized() * speed
	
	

