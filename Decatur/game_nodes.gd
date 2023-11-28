class_name game_node extends Node2D

var factor_count = 0
var neighbors = Array() 
var player = 0

@onready var sprite = $node_sprite
@onready var move_buttton = $moveButton
@onready var text_label = $textLabel

var move_val: int
	
func constructor(x: int, y: int, ocean: String, land: String) -> void:
	self.add_to_group("nodes")
	self.add_to_group("no_player")
	position = Vector2(x, y)
	self.add_to_group(ocean)
	self.add_to_group(land)
	
func add_neighbor(x: game_node):
	neighbors.append(x)

func set_int(x: int): 
	factor_count=x
	text_label.text=str(factor_count)
	
func increment_int(x: int):
	factor_count+=x
	text_label.text=str(factor_count)
	
func move(x: int):
	for neighbor in neighbors:
		neighbor.move_val=x
		neighbor.move_reciever()

func move_reciever():
	move_buttton.show()
	sprite.modulate=Color("af00ad")
	
func move_deactivator():
	move_buttton.hide()
	sprite.modulate=Color("ffffff")
	
func _on_move_button_pressed() -> void:
	get_tree().call_group("nodes", "move_deactivator")
	increment_int(move_val)

