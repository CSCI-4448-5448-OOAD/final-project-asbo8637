extends "res://Observer.gd"


var instance = null

func _get_singleton():
	if instance == null:
		instance = logger1.new()
	return instance

	

func _ready():
	pass

func display(outputs: String) -> void:
	print(outputs)

