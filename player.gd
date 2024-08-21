extends CharacterBody2D

var speed = 500.0


func _physics_process(delta):
	var input_direction = 0 
	
	if Input.is_key_label_pressed(KEY_W):
		input_direction -= 1
	
		
	elif Input.is_key_label_pressed(KEY_S):
		input_direction += 1
	
	position.y += input_direction * speed * delta
	


	var viewport_height = get_viewport_rect().size.y


	var paddle_height = $Paddle.size.y

	
	position.y = clamp(position.y, 0, viewport_height - paddle_height)
	
