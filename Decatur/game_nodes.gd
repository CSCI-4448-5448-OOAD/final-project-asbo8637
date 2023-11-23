class_name game_nodes extends Node2D

var factor_count = 0
var neighbors = Array() 
var player = 0
var sprite = preload("res://node_sprite.tscn")
var spriteIns = sprite.instantiate()
var posX: int
var posY: int

func _ready() -> void:
	add_child(spriteIns)
	spriteIns.position = Vector2(posX, posY)
	
func _init(x: int, y: int) -> void:
	posX = x
	posY = y
	

func add_neighbor(x: game_nodes):
	neighbors.append(x)

func read_neighbor_size():
	print(neighbors.size())

func set_int(x: int): 
	spriteIns.set_int(x)
