extends Sprite2D

@onready var textBox = $textLabel

func set_int(x: int):
	textBox.text = str(x)
