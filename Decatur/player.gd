class_name player extends Node2D

var player_num: int 
var next_player: player
var gameStarted: int = 0
var myMap: map
var myColor: Color

func _init(this_player: int, aMap: map, aColor: Color) -> void:
	player_num=this_player
	myMap=aMap
	myColor=aColor
	

func set_next_player(next: player):
	next_player=next
	
func start_game():
	var action = "initial_factor_start"
	myMap.get_tree().call_group("nodes", "set_potential_player", player_num, self)
	myMap.get_tree().call_group("player0", "game_action", action)
	
func pass_turn():
	next_player.turn()

func turn():
	if(gameStarted<2):
		gameStarted+=1
		self.start_game()
