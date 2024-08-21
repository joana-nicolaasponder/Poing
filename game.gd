extends Node2D

var p1score = 0
var p2score = 0

var linear_velocity
var initial_velocity = Vector2(-300,100)
var speed = 600.0
var ball 

func _ready():
	ball = $ball 
	

func _game_over():
	
	get_tree().change_scene_to_file("res://menu.tscn")

func _on_left_body_entered(body: Node2D) -> void:
	
	p2score += 1
	$p2score.text = str(p2score)
	_reset()
	


func _on_right_body_entered(body: Node2D) -> void:
	
	p1score += 1
	$p1score.text = str(p1score)
	_reset()

func _reset(): 
	
	print('reset')
	ball._reset_ball()
