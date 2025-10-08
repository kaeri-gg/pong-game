extends Node2D

func _physics_process(_delta: float) -> void:
	
	if Input.is_action_just_pressed("press_reset"):
		get_tree().reload_current_scene()
		print("press reset")
