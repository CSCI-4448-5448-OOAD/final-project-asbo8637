extends Node

@onready var node = preload("res://game_node.tscn")

func node_creator(x: int, y: int, ocean: String, land: String):
	var tempNode = node.instantiate()
	tempNode.constructor(x, y, "none", "europe")
	add_child(tempNode)

#Will create, functions that generate whole board sections. Such as europe

func set_neighbor():
	get_child(0).add_neighbor(get_child(1))
	get_child(1).add_neighbor(get_child(0))
