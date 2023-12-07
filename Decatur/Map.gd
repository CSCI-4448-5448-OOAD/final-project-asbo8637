class_name map extends Node2D

@onready var factory = $Node_Factory
var playerObj = preload("res://player.gd")
var playerArray: Array
var playerColors: Array = [
	Color("ffffff"),
	Color("00d0e4"),
	Color("fc1a00"),
	Color("d4af00")
]

func _ready() -> void:
	factory.node_creator(600, 200, "none", "europe")
	factory.node_creator(500, 200, "none", "europe")
	factory.node_creator(900, 500, "none", "europe")
	factory.node_creator(800, 300, "none", "europe")
	factory.node_creator(300, 400, "none", "europe")
	factory.node_creator(250, 50, "none", "europe")
	factory.node_creator(450, 400, "none", "europe")
	factory.node_creator(600, 300, "none", "europe")
	factory.set_neighbor()
	for i in 4:
		playerArray.append(playerObj.new(i, self, playerColors[i]))
		
	for i in range(1,4):
		playerArray[i].set_next_player(playerArray[i%3+1])
	playerArray[1].turn()


func _on_move_button_pressed() -> void:
	var action = "move"
	get_tree().call_group("nodes", "game_action", action)


func _on_touch_screen_button_pressed() -> void:
	var action = "expand"
	get_tree().call_group("nodes", "game_action", action)
