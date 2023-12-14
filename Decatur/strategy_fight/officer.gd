#second level of fight rank
class_name Officer extends fight_rank

func _init() -> void: #bonus is 1
	fight_bonus=1
	fight_name="Officer"

func get_next_bonus() -> fight_rank: #returns next rank
	return colonol.new()
