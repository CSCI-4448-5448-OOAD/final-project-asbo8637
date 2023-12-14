#superclass of the fight strategies
class_name fight_rank extends Node

var fight_bonus: int
var fight_name: String

func get_fight_bonus() -> int:
	return fight_bonus

func get_fight_name() -> String:
	return fight_name

func get_next_bonus() -> fight_rank:
	return self
	
