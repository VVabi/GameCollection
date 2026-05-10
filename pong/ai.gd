extends Node2D

var ball_position = Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var velocity = 500
var skip_time = 0.1
var current_skip_time = 0.0
var frames_skipped = 0
var sign = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	current_skip_time = current_skip_time + delta
	if current_skip_time > skip_time:
		current_skip_time = 0
		
		var current_height 	= position.y
		var ball_height 	= ball_position.y
		
		if current_height < ball_height:
			sign = 1
		else:
			sign = -1
			
	increment(sign, delta)
		
func increment(sign, delta):
	position.y = position.y+sign*delta*velocity


func _on_ball_ball_position_notifier(position) -> void:
	ball_position = position
