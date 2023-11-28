class_name map extends Node2D

var node = preload("res://game_node.tscn")

func _ready() -> void:
	var node1 = node.instantiate()
	node1.constructor(100, 100, "none", "europe")
	
	var node2 = node.instantiate()
	node2.constructor(200, 200, "none", "europe")
	
	node1.add_neighbor(node2)
	add_child(node1)
	add_child(node2)
	node1.set_int(2)
	node2.set_int(3)
	node1.move(2)
