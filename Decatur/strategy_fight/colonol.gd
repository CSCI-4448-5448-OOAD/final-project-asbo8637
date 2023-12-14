class_name colonol extends fight_rank

func _init() -> void: #third fight rank. Fight bonus is 2
	fight_bonus=2
	fight_name="Colonol"

func get_next_bonus() -> fight_rank: #returns next rank
	return admiral.new()
