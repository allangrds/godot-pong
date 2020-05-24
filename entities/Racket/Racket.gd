extends KinematicBody2D

signal update

# Declare member variables here. Examples:
export var move_speed = 250
var direction = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	emit_signal("update")

func _physics_process(delta):
	if direction.length() > 0:
		direction = direction.normalized() * move_speed
		move_and_collide(direction * delta)
