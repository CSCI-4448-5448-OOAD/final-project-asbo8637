#Represents each spot on the map
class_name game_node extends Node2D

var factor_count = 0
var neighbors = Array() 
var action: Callable
var potential_player: int = 0 

var parent_player_int: int = 0
var parent_player: player

var action_node_parent: game_node

var potential_parent_player: player

@onready var sprite = $node_sprite
@onready var move_buttton = $moveButton
@onready var text_label = $textLabel
@onready var action_button = $actionButton
@onready var fight_button = $fightButton
@onready var highLight = $highLight

var move_val: int = 0
	
func updateFactorCount(): #adds it factors to the corresponding player. 
	if(parent_player!=null):
		parent_player.addToFactorCount(factor_count)

func set_player_color(): #sets itself to its parents color
	sprite.modulate=parent_player.myColor

func constructor(x: int, y: int, ocean: String, land: String, idNode: int) -> void: #constructor to set all needed values
	self.add_to_group("nodes")
	self.add_to_group("player0")
	position = Vector2(x, y)
	self.add_to_group(ocean)
	self.add_to_group(land)
	
func add_neighbor(x: game_node): #adds a neighboring node
	neighbors.append(x)

func set_int(x: int): #set factor count
	factor_count=x
	text_label.text=str(factor_count)
	
func increment_int(x: int): #adds to factor count
	factor_count+=x
	text_label.text=str(factor_count)
	
func move(x: int = 1): #starts the move action
	for neighbor in neighbors:
		neighbor.move_val=x
		neighbor.move_reciever(parent_player_int)
		neighbor.action_node_parent=self
		
		
func move_reciever(x:int): #recieves the move action. And sets up the reciever button. 
	highLight.modulate = Color("f36aa0")
	if(factor_count != 7  && (parent_player_int == 0 || parent_player_int == x)):	
		move_buttton.show()
		highLight.show()
		

func fight(): #starts the fight action
	for neighbor in neighbors:
		if(neighbor.factor_count < self.factor_count && neighbor.parent_player_int != self.parent_player_int && neighbor.parent_player_int!=0):
			neighbor.action_node_parent=self
			neighbor.fight_reciever()
			
func fight_reciever(): #recieves the fight action. And sets up the reciever button. 
	highLight.modulate = Color("f36aa0")
	fight_button.show()
	highLight.show()
	
		
func expand(): #starts the expand action
	var player_group="player"+str(parent_player_int)
	get_tree().call_group(player_group, "set_action_node", self)
	get_tree().call_group(player_group, "game_action", "expand_2")
	self.deactivator()
	
func expand_2(): #This is called after expand. So that expand is used twice
	action_node_parent.increment_int(1)
	increment_int(1)
	potential_parent_player.pass_turn()
	
func set_action_node(myNode: game_node): #sets the node that triggers recieved actions. 
	self.action_node_parent=myNode

func deactivator(): #turns off all reciever buttons. And unhighlights button
	highLight.modulate = Color("cec100")
	move_buttton.hide()
	action_button.hide()
	highLight.hide()
	fight_button.hide()
	
func set_potential_player(playerVal: int, playerObj: player): #sets this nodes potential parent player/current turn player
	potential_player=playerVal
	potential_parent_player=playerObj
	

func initial_factor_start(): #called to start the game. Setting this node to 7 factors. 
	self.set_int(7)
	self.set_player()
	potential_parent_player.pass_turn()
	
func set_player(): #Sets this node to correspond to a new player. 
	for i in 4:
		self.remove_from_group("player"+str(i))
	self.add_to_group("player"+str(potential_player))
	self.parent_player=potential_parent_player
	self.parent_player_int=potential_player
	self.set_player_color()
	

func game_action(x: String): #Sets up the reciever button for all actions. 
	if((x!="move" || factor_count>=2) && ((x!="expand" && x!="expand_2") || factor_count<7)):
		highLight.show()
		action = Callable(self, x)
		action_button.show()
	
func _on_move_button_pressed() -> void: #reciever button of the move action
	action_node_parent.increment_int(-move_val)
	get_tree().call_group("nodes", "deactivator")
	increment_int(move_val)
	self.set_player()
	potential_parent_player.pass_turn()	

func _on_fight_button_pressed() -> void: #reciever button of the fight action
	var rng = RandomNumberGenerator.new()
	var def = int(rng.randf_range(1,6) + self.parent_player.get_fight_bonus())
	var off = int(rng.randf_range(1,6) + action_node_parent.parent_player.get_fight_bonus())
	get_tree().call_group("nodes", "deactivator")
	if(off!=def):
		action_node_parent.increment_int(-self.factor_count)
		if(off>def):
			self.set_player()
	parent_player.fightResults(action_node_parent.parent_player, self.parent_player, off, def)
	


func _on_action_button_pressed(): #reciever button of all initial actions. 
	get_tree().call_group("nodes", "deactivator") 
	action.call()# Replace with function body.

