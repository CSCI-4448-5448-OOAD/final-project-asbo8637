class_name game_nodes extends Node2D

var factor_count = 0
var neighbors = Array() 
var player = 0

var sprite = preload("res://node_sprite.tscn")
var spriteIns = sprite.instantiate()

var posX: int
var posY: int

var move_val: int

func _ready() -> void:
	self.add_to_group("nodes")
	add_child(spriteIns)
	spriteIns.set_parent(self)
	spriteIns.position = Vector2(posX, posY)
	
func _init(x: int, y: int, ocean: String, land: String) -> void:
	posX = x
	posY = y
	self.add_to_group(ocean)
	self.add_to_group(land)
	

func add_neighbor(x: game_nodes):
	neighbors.append(x)

func read_neighbor_size():
	print(neighbors.size())

func set_int(x: int): 
	factor_count=x
	spriteIns.set_int(factor_count)
	
func increment_int(x: int):
	factor_count+=x
	spriteIns.set_int(factor_count)
	
func move(x: int):
	for neighbor in neighbors:
		neighbor.move_val=x
		neighbor.move_reciever()

func move_reciever():
	spriteIns.activate_move()
	
func move_deactivator():
	spriteIns.deactivate_move()

func increment_by_move_val():
	increment_int(move_val)
	
	
