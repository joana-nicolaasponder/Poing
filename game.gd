extends Node2D



func _process(delta):
	var ball = $ball
	var player1 = $player
	var player2 = $player2

	
	if ball.position.x < player1.position.x -50: 
		
		 
		_game_over()
		
		
	
	elif ball.position.x > player2.position.x +50: 
		
		_game_over()


func _game_over():
	
	get_tree().change_scene_to_file("res://menu.tscn")
	

