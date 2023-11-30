class_name map extends Node2D

@onready var factory = $Node_Factory

func _ready() -> void:
	
	factory.node_creator(600, 200, "none", "europe")
	factory.node_creator(500, 200, "none", "europe")
	factory.set_neighbor()


func _on_move_button_pressed() -> void:
	var action = "move"
	get_tree().call_group("nodes", "game_action", action)


func _on_touch_screen_button_pressed() -> void:
	var action = "expand"
	get_tree().call_group("nodes", "game_action", action)
