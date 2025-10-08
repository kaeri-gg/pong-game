extends Area2D

@onready var timer: Timer = $Timer
@onready var game_manager: Node = %GameManager
@onready var ball: Ball = %Ball


func _on_body_entered(body: Node) -> void:
	if body is Ball:
		game_manager.right_add_point()
		timer.start()
	
func _on_timer_timeout() -> void:
	timer.stop()
	ball.reset()
	
