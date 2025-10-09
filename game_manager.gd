extends Node

@export var left_score: int = 0
@export var right_score: int = 0
@onready var score_left: Label = $"../Labels/Score-Left"
@onready var score_right: Label = $"../Labels/Score-Right"

func left_add_point() -> void:
	left_score += 1 
	score_left.text = str(left_score)

func right_add_point() -> void:
	right_score += 1 
	score_right.text = str(right_score)
