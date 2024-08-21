extends RigidBody2D


var initial_velocity = Vector2(-300, 100)
var speed = 600.0

func _ready():
	
	linear_velocity = initial_velocity

func _physics_process(delta):
	
	linear_velocity = linear_velocity.normalized() * speed

func _reset_ball():
	print('reset ball')

	set_deferred("position", Vector2(640,320))
	linear_velocity = initial_velocity
	
	apply_central_impulse(linear_velocity.normalized() * speed)
	
