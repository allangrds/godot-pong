extends Node

class_name AiInputComponent

# Declare member variables here. Examples:
export (NodePath) var ball_path
onready var ball = get_node(ball_path)

var racket

# Called when the node enters the scene tree for the first time.
func _ready():
  racket = get_parent()
  racket.connect("update", self, "calculate_velocity")

func calculate_velocity():
	if not "direction" in racket:
		return

	racket.direction = Vector2(0, get_ball_direction())

func get_ball_direction():
	if abs(racket.position.y - ball.position.y) > 20:
		if racket.position.y < ball.position.y:
			return 1
		else:
			return -1
	else:
		return 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
