class_name map extends Node2D

var node1 = game_nodes.new(0, 0)
var node2 =  game_nodes.new(100, 100)

func _ready() -> void:
	node1.add_neighbor(node2)
	node1.read_neighbor_size()
	node2.read_neighbor_size()
	add_child(node1)
	add_child(node2)
	node1.set_int(2)
