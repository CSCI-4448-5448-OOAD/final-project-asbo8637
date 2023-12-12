class_name game_node extends Node2D

var factor_count = 0
var neighbors = Array() 
var action: Callable
var potential_player: int = 0 

var parent_player_int: int = 0
var parent_player: player

var potential_parent_player: player

@onready var sprite = $node_sprite
@onready var move_buttton = $moveButton
@onready var text_label = $textLabel
@onready var action_button = $actionButton
@onready var highLight = $highLight

var move_val: int = 0
	

func set_player_color():
	sprite.modulate=parent_player.myColor

func constructor(x: int, y: int, ocean: String, land: String, idNode: int) -> void:
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
		neighbor.move_reciever(parent_player_int)
		
		
func move_reciever(x:int):
	highLight.modulate = Color("f36aa0")
	if(parent_player_int == 0 || parent_player_int == x):	
		move_buttton.show()
		highLight.show()
		
func expand():
	increment_int(1)
	var player_group="player"+str(parent_player_int)
	potential_parent_player.noUndo()
	get_tree().call_group(player_group, "game_action", "expand_2")
	
func expand_2(): #This is called after expand. So that expand is used twice
	increment_int(1)
	potential_parent_player.pass_turn()
	
func deactivator():
	highLight.modulate = Color("cec100")
	move_buttton.hide()
	action_button.hide()
	highLight.hide()
	
func set_potential_player(playerVal: int, playerObj: player):
	potential_player=playerVal
	potential_parent_player=playerObj
	

func initial_factor_start():
	self.set_int(7)
	self.set_player()
	potential_parent_player.pass_turn()
	
func set_player():
	for i in 4:
		self.remove_from_group("player"+str(i))
	self.add_to_group("player"+str(potential_player))
	self.parent_player=potential_parent_player
	self.parent_player_int=potential_player
	self.set_player_color()
	
func _on_move_button_pressed() -> void:
	get_tree().call_group("nodes", "deactivator")
	increment_int(move_val)
	self.set_player()
	potential_parent_player.pass_turn()

func game_action(x: String):
	highLight.show()
	action = Callable(self, x)
	action_button.show()
	
func _on_action_button_pressed():
	get_tree().call_group("nodes", "deactivator")
	action.call()# Replace with function body.
