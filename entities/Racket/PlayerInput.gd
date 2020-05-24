extends Node

class_name PlayerInputComponent

# Declare member variables here. Examples:
var player


# Called when the node enters the scene tree for the first time.
func _ready():
  player = get_parent()
  player.connect("update", self, "handle_input")

func handle_input():
  if not "direct" in player:
	  return

  player.direct = Vector2()

  if Input.is_action_pressed("ui_up"):
	  player.direction.y -= 1
  if Input.is_action_pressed("ui_down"):
	  player.direction.y += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
