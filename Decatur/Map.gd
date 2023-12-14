#Runs and contains the whole game
class_name map extends Node2D

@onready var factory = $Node_Factory
@onready var buttons = $buttonFolder
@onready var undo = $undoFolder
@onready var fightText = $fightScores
@onready var timer = $Timer
@onready var clockHand = $clockHand
@onready var symbolInst = preload("res://player_symbol.tscn")


var turnCount: int = 0
var currentPlayer: int = 1 
var currentPlayerObj: player
var playerObj = preload("res://player.gd")
var playerArray: Array
var d = Tracker.getTracker()
var observers: Array = [d]


var playerColors: Array = [ #an array for each players colors
	Color("ffffff"), #this is player 0's colors or the null player
	Color("00d0e4"),
	Color("fc1a00"),
	Color("d4af00")
]
var playerSymbols: Array

func _ready() -> void: #when starting the map, creates all needed variables. 
	factory.Europe_nodes()
	factory.Middle_Asia_nodes()
	factory.Africa_nodes()
	factory.East_Asia_nodes()
	factory.Oceania_nodes()
	factory.set_neighbor()
	for i in 4:
		playerArray.append(playerObj.new(i, self, playerColors[i]))
		UpdateObsever("player " + str(i) +" been added")
		
	for i in range(1,4):
		var symbol = symbolInst.instantiate()
		add_child(symbol)
		symbol.setColor(playerColors[i])
		symbol.setPos(100+270*i)
		symbol.setText(i, 0)
		playerSymbols.append(symbol)
		playerArray[i].set_next_player(playerArray[i%3+1])
		
	playerArray[1].turn()

func endGame(): #ends the game and determines winner
	buttons.hide()
	if((playerArray[1].getFactorCount()>playerArray[2].getFactorCount()) && (playerArray[1].getFactorCount()>playerArray[3].getFactorCount())):
		fightText.text="Player 1 wins!"
	elif((playerArray[2].getFactorCount()>playerArray[1].getFactorCount()) && (playerArray[2].getFactorCount()>playerArray[3].getFactorCount())):
		fightText.text="Player 2 wins!"
	elif((playerArray[3].getFactorCount()>playerArray[1].getFactorCount()) && (playerArray[3].getFactorCount()>playerArray[2].getFactorCount())):
		fightText.text="Player 3 wins!"
	else:
		fightText.text="Tie!"
	
	UpdateObsever("Game ended, result: " + fightText.text)
	fightText.show()

func start_turn(x: int, y: player): #shows action buttons and possible increments turn counter. 
	if(x == 1):
		turnCount+=1
		clockHand.rotation_degrees=-90+40*turnCount
		if(turnCount==10):
			endGame()
			return
	undo.hide()
	currentPlayer=x
	currentPlayerObj=y
	buttons.show()
	UpdateObsever("-------\nPlayer " + str(currentPlayer)+ " has started their turn") 

func updateSymbols(x: int): #update the player symbols to match factor count. And show who's turn it is. 
	for i in 3:
		playerSymbols[i].hideSprite()
		playerSymbols[i].setText(i+1, playerArray[i+1].getFactorCount())
		if(i+1 == x):
			playerSymbols[i].showSprite()
	

func _on_move_button_pressed() -> void: #Sends command to all correct nodes that a move action is occuring
	buttons.hide()
	undo.show()
	var action = "move"
	var group = "player" + str(currentPlayer)
	get_tree().call_group(group, "game_action", action)
	UpdateObsever("Player " + str(currentPlayer) + " is moving")

func noUndo(): #hides the undo button
	undo.hide()

func _on_fight_button_pressed() -> void: #Sends command to all correct nodes that a fight action is occuring
	buttons.hide()
	undo.show()
	var action = "fight"
	var group = "player" + str(currentPlayer)
	get_tree().call_group(group, "game_action", action)
	UpdateObsever("Player " + str(currentPlayer) + " is fighting")

func _on_expand_button_pressed() -> void:  #Sends command to all correct nodes that a expand action is occuring
	buttons.hide()
	undo.show()
	var action = "expand"
	var group = "player" + str(currentPlayer)
	get_tree().call_group(group, "game_action", action)
	UpdateObsever("Player " + str(currentPlayer) + " is expanding")

func _on_undo_button_pressed() -> void:  #Undoes previous action, and deactivates all nodes
	undo.hide()
	buttons.show()
	get_tree().call_group("nodes", "deactivator")
	UpdateObsever("Undid action")
	
func show_fight_values(offensePlayer: player, defensePlayer: player, offense: int, defense: int): #Explains the result of a fight
	noUndo()
	var text = "Player " + str(offensePlayer.player_num) + " attacks: " + str(offense)
	text += "\nPlayer " + str(defensePlayer.player_num) + " defends: " + str(defense)
	if(offense == defense):
		text += "\ncausing a tie"
	elif(offense>defense):
		offensePlayer.upgrade_rank()
		text += "\nOffense wins"
		text += "\nplayer " + str(offensePlayer.player_num) + " is now a \n" + offensePlayer.fight_strategy.get_fight_name()
	elif(offense<defense):
		text += "\nDefense wins"
	fightText.text=text
	fightText.show()
	UpdateObsever(text)
	updateSymbols(currentPlayer)
	timer.start()
	
	

func UpdateObsever(state: String) -> void: #updates all observers. Since we used singleton, there is actually only one observer
	for i in observers:
		i.update(state)
		
			


func _on_timer_timeout() -> void: #turns off fight text after a certain amount of time. 
	fightText.hide()
	currentPlayerObj.pass_turn()


func _on_skip_button_pressed() -> void: #passes turn
	currentPlayerObj.pass_turn()
