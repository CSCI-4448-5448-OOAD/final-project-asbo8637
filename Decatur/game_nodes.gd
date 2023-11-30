class_name game_node extends Node2D

var factor_count = 0
var neighbors = Array() 
var action: Callable
var player_val: String
var current_player: int = 0

@onready var sprite = $node_sprite
@onready var move_buttton = $moveButton
@onready var text_label = $textLabel
@onready var action_button = $actionButton
@onready var highLight = $highLight

var move_val: int = 0
	
func constructor(x: int, y: int, ocean: String, land: String) -> void:
	self.add_to_group("nodes")
	self.add_to_group("player0")
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
	
func move(x: int = 1):
	for neighbor in neighbors:
		neighbor.move_val=x
		neighbor.player_val="player"+str(current_player)
		neighbor.move_reciever(current_player)
		
		
func move_reciever(x:int):
	highLight.modulate = Color("f36aa0")
	if(current_player == 0 || current_player == x):	
		move_buttton.show()
		highLight.show()
		
func expand():
	increment_int(1)
	var player_group="player"+str(current_player)
	get_tree().call_group(player_group, "game_action", "expand_2")
	
func expand_2():
	increment_int(1)
	
func deactivator():
	highLight.modulate = Color("cec100")
	move_buttton.hide()
	action_button.hide()
	highLight.hide()
	
func _on_move_button_pressed() -> void:
	get_tree().call_group("nodes", "deactivator")
	increment_int(move_val)
	for i in 8:
		self.remove_from_group("player"+str(i))
	self.add_to_group(player_val)

func game_action(x: String):
	highLight.show()
	action = Callable(self, x)
	action_button.show()
	
func _on_action_button_pressed():
	get_tree().call_group("nodes", "deactivator")
	action.call()# Replace with function body.
