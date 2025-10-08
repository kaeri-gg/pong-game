extends CharacterBody2D

const SPEED = 300.0

var direction = Vector2.ZERO

func _ready() -> void:
	# Start the ball in a random horizontal direction
	# With random vertical rotation
	direction = get_random_direction()
	velocity = direction * SPEED

func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity * delta)
	
	if collision:
		# Reflect the velocity vector when hitting something
		var normal = collision.get_normal()
		velocity = velocity.bounce(normal)


# Get random horizontal direction
func get_random_x() -> int:
	# Pick random direction, either Left or Right
	# Multiplication to +1 does not change the value
	# But multiplication to -1 does change it's direction
	return [-1, 1].pick_random()

# Get random vertical rotation
func get_random_y() -> float:
	# Get random direction, Up, Down or anything in-between
	# It's float value, so it can be 0.34 or -0.123
	# It decides how much random rotation it will have
	# We need to make the range between PI value
	return randf_range(-2, 2)

func get_direction_vector(x_dir: int, y_dir: float) -> Vector2:
	# We create a new vector (2d) from x and y values and we normalize it
	# Normalizing is the process when the vector magnitude is scaled to 1
	# While the direction/angle is preserved
	#
	# In our case, it's to make sure it won't change the ball speed
	# We only need its direction
	return Vector2(x_dir, y_dir).normalized()

func get_random_direction() -> Vector2:
	var x_dir = get_random_x()
	var y_dir = get_random_y()
	
	return get_direction_vector(x_dir, y_dir)
