extends Control

# Buttons
@onready var start_game_button: Button = %StartGameButton

func _on_start_game_button_pressed() -> void:
	# load game scene
	var game_scene: = preload("res://scenes/game.tscn")
	get_tree().change_scene_to_packed(game_scene)
