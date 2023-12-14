#Strategy pattern that all players start with. 
class_name rookie extends fight_rank

func _init() -> void: #initialize to 0 fight bonus
	fight_bonus=0
	fight_name="Rookie"


func get_next_bonus() -> fight_rank: #returns the next rank
	return Officer.new()
