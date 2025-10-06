extends CharacterBody2D

@export var speed: float = 700.0

func _physics_process(_delta: float) -> void:
	
	# Each frame start it is Zero vector Vector(0,0)
	var direction = Vector2.ZERO

	# If pressed change direction Y
	if Input.is_action_pressed("paddleRight_up"):
		direction.y = -1
		
	# If pressed change direction Y
	elif Input.is_action_pressed("paddleRight_down"):
		direction.y = 1
	
	# Updates speed/velocity
	velocity = direction * speed
	
	# Moves the built-in characterBody2D velocity node, updates UI
	move_and_slide()
