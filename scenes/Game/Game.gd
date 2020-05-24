extends Node

# Declare member variables here. Examples:
var score_player_one = 0
var score_player_two = 0
var max_score = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	$StartTimer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Field_goal_left():
	score_player_two += 1
	
	if score_player_two < max_score:
		start_new_round()

func _on_Field_goal_right():
	score_player_one += 1
	
	if score_player_one < max_score:
		start_new_round()

func start_new_round():
	$Ball.reset()
	$Racket.set_position(Vector2(50, 256))
	$Racket2.set_position(Vector2(974, 256))
	$StartTimer.start()

func _on_StartTimer_timeout():
	$Ball.set_start_direction()
