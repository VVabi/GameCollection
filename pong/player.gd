extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


var velocity = 500
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = 500
	if Input.is_action_pressed("up"):
		increment(-1, delta)
	elif Input.is_action_pressed("down"):
		increment(1, delta)

func increment(sign, delta):
	position.y = position.y+sign*delta*velocity
