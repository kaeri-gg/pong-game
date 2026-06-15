class_name Paddle
extends CharacterBody2D

## Movement speed in pixels per second
@export var speed: float = 700.0

## Input actions that move THIS paddle. Set per paddle in the Inspector,
## e.g. left paddle -> paddleLeft_up / paddleLeft_down,
##      right paddle -> paddleRight_up / paddleRight_down.
@export var up_action: String = "paddleLeft_up"
@export var down_action: String = "paddleLeft_down"

## Half the paddle's on-screen height, used to keep it fully inside the view.
@export var half_height: float = 80.0

func _physics_process(_delta: float) -> void:
	var direction: = 0.0

	if Input.is_action_pressed(up_action):
		direction -= 1.0
	if Input.is_action_pressed(down_action):
		direction += 1.0

	# Move only vertically
	velocity = Vector2(0.0, direction * speed)
	move_and_slide()

	# There are no wall bodies anymore, so keep the paddle inside the
	# viewport ourselves. Uses the live viewport size, so it survives resizing.
	var view_height: = get_viewport_rect().size.y
	global_position.y = clampf(global_position.y, half_height, view_height - half_height)
