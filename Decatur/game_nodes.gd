class_name game_node extends Node2D

var factor_count = 0
var neighbors = Array() 
var action: Callable
var player_val: String
var player: int

@onready var sprite = $node_sprite
@onready var move_buttton = $moveButton
@onready var text_label = $textLabel
@onready var Action_button = $Action_Button
@onready var Expand_button = $Expand_Button

var move_val: int
var expand_val: int
var Even = 1
	
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
	
func move(x: int):
	for neighbor in neighbors:
		neighbor.move_val=x
		neighbor.player_val="player"+str(player)
		neighbor.move_reciever(player)
		
func Expand(x: game_node):
	x.expand_val = 1
	x.Expand_reciever()
	for neighbor in neighbors:
		neighbor.expand_val=1
		neighbor.Expand_reciever()
	
func Expand_reciever():
	Expand_button.show()
	sprite.modulate=Color("af00ad")
		
func move_reciever(x:int):
	if(player == 0 || player == x):	
		move_buttton.show()
		sprite.modulate=Color("af00ad")
	
func deactivator():
	move_buttton.hide()
	Action_button.hide()
	Expand_button.hide()
	sprite.modulate=Color("ffffff")
	
func _on_move_button_pressed() -> void:
	get_tree().call_group("nodes", "deactivator")
	increment_int(move_val)
	for i in 8:
		self.remove_from_group("player"+str(i))
	self.add_to_group(player_val)

func game_action(x: Callable):
	action = x
	Action_button.show()
	

func _on_action_button_pressed():
	get_tree().call_group("nodes", "deactivator")
	action.call()# Replace with function body.
	
func _on_expand_button_pressed():
	if(Even % 2 == 0):
		get_tree().call_group("nodes", "deactivator")
	Even += Even
	increment_int(expand_val)
	for i in 8:
		self.remove_from_group("player"+str(i))
		self.add_to_group(player_val)
	# Replace with function body.
	
