extends Control

# Buttons
@onready var start_game_button: Button = $StartGameButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_game_button.pressed.connect(_on_start_game_button_pressed)


func _on_start_game_button_pressed() -> void:
	# load game scene
	var game_scene: = preload("res://scenes/game.tscn")
	get_tree().change_scene_to_packed(game_scene)
