class_name map extends Node2D

@onready var factory = $Node_Factory
@onready var buttons = $buttonFolder
@onready var undo = $undoFolder

var currentPlayer: int
var playerObj = preload("res://player.gd")
var playerArray: Array
#var d = logger1.new()
#var ob: Array = [d]
var playerColors: Array = [
	Color("ffffff"),
	Color("00d0e4"),
	Color("fc1a00"),
	Color("d4af00")
]

func _ready() -> void:
	#0 Iceland
	factory.node_creator(332, 90, "atlantic", "europe")
	#1 British Isle
	factory.node_creator(395, 125, "atlantic", "europe")
	#2 West Europe
	factory.node_creator(435, 170, "atlantic", "europe")
	#3 East Europe
	factory.node_creator(510, 150, "atlantic", "europe")
	#4 Scandi Navi
	factory.node_creator(485, 90, "atlantic", "europe")
	#5 Russia
	factory.node_creator(590, 120, "none", "europe")
	#6 Anatolia
	factory.node_creator(560, 200, "atlantic", "europe")
	#7 Barbary Coast
	factory.node_creator(430, 250, "atlantic", "africa")
	#8 Egypt
	factory.node_creator(520, 270, "atlantic", "Middle asia")
	#9 West Africa
	factory.node_creator(378, 300, "atlantic", "africa")
	#10 Niger Basin
	factory.node_creator(438, 330, "atlantic", "africa")
	#11 Congo Basin
	factory.node_creator(500, 398, "atlantic", "africa")
	#12 South Africa
	factory.node_creator(520, 510, "atlantic", "africa")
	#13 East Africa
	factory.node_creator(560, 448, "Indian", "africa")
	#14 Madagastor
	factory.node_creator(617, 478, "Indian", "africa")
	#15 Horn of Africa
	factory.node_creator(585, 360, "Indian", "africa")
	#16 Arabia
	factory.node_creator(615, 280, "Indian", "Middle asia")
	#17 Persia
	factory.node_creator(683, 230, "Indian", "Middle asia")
	#18 India
	factory.node_creator(760, 275, "Indian", "EastAsia")
	#19 Kazakh Khanate
	factory.node_creator(750, 175, "none", "Middle asia")
	#20 Urals
	factory.node_creator(690, 110, "none", "Middle Asia")
	#21 West China
	factory.node_creator(822, 215, "none", "Middle Asia")
	#22 Mongolia
	factory.node_creator(875, 165, "none", "Middle Asia")
	#23 Siberia
	factory.node_creator(835, 95, "none", "EastAsia")
	#24 Indo China
	factory.node_creator(860, 300, "none", "EastAsia")
	#25 East China
	factory.node_creator(910, 245, "none", "EastAsia")
	#26 Manchuria
	factory.node_creator(975, 165, "none", "EastAsia")
	#27 Yakutia
	factory.node_creator(953, 89, "none", "EastAsia")
	#28 Far East
	factory.node_creator(1117, 89, "none", "EastAsia")
	#29 Japan
	factory.node_creator(1027, 208, "Pacific", "Oceania")
	#30 Philip Pine
	factory.node_creator(960, 329, "Pacific", "Oceania")
	#31 New Guinea
	factory.node_creator(1040, 410, "Pacific", "Oceania")
	#31 East Australia
	factory.node_creator(1053, 522, "Pacific", "Oceania")
	#32 West Australia
	factory.node_creator(960, 512, "Indinan", "Oceania")
	#33 New Zealand
	factory.node_creator(1120, 610, "Pacific", "Oceania")
	#32 Indonesia 
	factory.node_creator(906, 392, "Indinan", "Oceania")
	factory.set_neighbor()
	for i in 4:
		playerArray.append(playerObj.new(i, self, playerColors[i]))
		#UpdateObsever("player been added")
		
	for i in range(1,4):
		playerArray[i].set_next_player(playerArray[i%3+1])
		
	playerArray[1].turn()

func start_turn(x: int):
	undo.hide()
	currentPlayer=x
	buttons.show()
	#UpdateObsever("Next turn")

func _on_move_button_pressed() -> void:
	buttons.hide()
	undo.show()
	var action = "move"
	var group = "player" + str(currentPlayer)
	get_tree().call_group(group, "game_action", action)
	#UpdateObsever("Player move")

func noUndo():
	undo.hide()

func _on_expand_button_pressed() -> void:
	buttons.hide()
	undo.show()
	var action = "expand"
	var group = "player" + str(currentPlayer)
	get_tree().call_group(group, "game_action", action)
	#UpdateObsever("Expand")

func _on_undo_button_pressed() -> void:
	undo.hide()
	buttons.show()
	get_tree().call_group("nodes", "deactivator")
	
	
#func UpdateObsever(state: String) -> void:
	#for i in range(0, ob.size()):
		#Observer.Update(state)
			
