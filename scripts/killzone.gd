extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node) -> void:
	body.get_node("CollisionShape2D").queue_free()

	print("Ball passed the line", body)

	timer.start()
	
func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
