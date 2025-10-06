extends CharacterBody2D

const SPEED = 300.0
var direction = Vector2.ZERO

func _ready() -> void:
	# Start the ball in a random horizontal direction
	var x_dir = [-1, 1].pick_random()
	var y_dir = randf_range(-0.5, 0.5)
	direction = Vector2(x_dir, y_dir).normalized()
	velocity = direction * SPEED

func _physics_process(_delta: float) -> void:
	var collision = move_and_collide(velocity * _delta)
	
	if collision:
		# Reflect the velocity vector when hitting something
		var normal = collision.get_normal()
		velocity = velocity.bounce(normal)
