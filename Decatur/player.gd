#reprsents the players in the game. 
class_name player extends Node2D

var player_num: int 
var next_player: player
var gameStarted: int = 0
var myMap: map
var myColor: Color
var fight_strategy: fight_rank
var factorCount: int =0


func getFactorCount() -> int: #gets the factors of all game nodes that correspond to this player. 
	factorCount=0
	myMap.get_tree().call_group("player"+str(player_num), "updateFactorCount")
	return factorCount

func addToFactorCount(x: int) -> void: #increments this players factor count. 
	factorCount += x


func get_fight_bonus() -> int: #returns the strategies bonus. 
	return fight_strategy.get_fight_bonus()
	
func upgrade_rank(): #increments this players fight bonus
	fight_strategy=fight_strategy.get_next_bonus()
	
func get_fight_strategy_name() -> String: #gets this players current fight strategy name
	return fight_strategy.get_fight_name()

func _init(this_player: int, aMap: map, aColor: Color) -> void: #constructor
	fight_strategy=rookie.new()
	self.add_to_group("players")
	player_num=this_player
	myMap=aMap
	myColor=aColor
	
func noUndo(): #hides the undo button of the map
	myMap.noUndo()

func set_next_player(next: player): #sets this players next player. The player who goes after this one
	next_player=next
	
func start_game_turn(): #for the first two turns
	var action = "initial_factor_start"
	myMap.get_tree().call_group("player0", "game_action", action)
	
func pass_turn(): #passes the turn
	next_player.turn()

func turn(): #starts the turn.
	myMap.updateSymbols(player_num)
	myMap.get_tree().call_group("nodes", "set_potential_player", player_num, self)
	if(gameStarted<2):
		gameStarted+=1
		self.start_game_turn()
	else:
		myMap.start_turn(player_num, self)
		
func fightResults(offensePlayer: player, defensePlayer: player, offense: int, defense: int): #reports the fight results to the map.
	myMap.show_fight_values(offensePlayer, defensePlayer, offense, defense)
	

	
