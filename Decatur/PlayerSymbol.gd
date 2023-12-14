#is the symbol of each player at the top of the screen
extends Node2D

@onready var sprite = $Sprite2D
@onready var myText = $RichTextLabel
var thisColor: Color

func setPos(x: int): #sets initial position
	self.position= Vector2(x, 0)

func setColor(myColor: Color): #sets it color to the corresponding player.
	thisColor = myColor
	
func setText(player: int, factors: int): #updates to appropiate text
	myText.text = "Player: " + str(player) + "\nFactor Count: " + str(factors)

func showSprite(): #highlights node to represent turn
	sprite.modulate=thisColor

func hideSprite(): #unhighlights node to show that its not this players turn. 
	sprite.modulate=Color("000000")
