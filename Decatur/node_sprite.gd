extends Sprite2D

@onready var text_box = $textLabel
@onready var move_buttton = $moveButton
var parent_node: game_nodes 

func set_parent(x: game_nodes):
	parent_node=x

func set_int(x: int):
	text_box.text = str(x)

func activate_move():
	move_buttton.show()
	self.modulate=Color("af00ad")
	
func deactivate_move():
	move_buttton.hide()
	self.modulate=Color("ffffff")

func _on_move_button_pressed() -> void:
	get_tree().call_group("nodes", "move_deactivator")
	parent_node.increment_by_move_val()
	
	
