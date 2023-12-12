extends Node

@onready var node = preload("res://game_node.tscn")

func node_creator(x: int, y: int, ocean: String, land: String):
	var tempNode = node.instantiate()
	tempNode.constructor(x, y, "none", "europe")
	add_child(tempNode)

#Will create, functions that generate whole board sections. Such as europe

func set_neighbor():
	get_child(0).add_neighbor(get_child(1))
	get_child(0).add_neighbor(get_child(2))
	get_child(0).add_neighbor(get_child(3))
	get_child(0).add_neighbor(get_child(4))
	get_child(0).add_neighbor(get_child(6))
	get_child(0).add_neighbor(get_child(7))
	get_child(0).add_neighbor(get_child(8))
	get_child(0).add_neighbor(get_child(9))
	get_child(0).add_neighbor(get_child(14))
	get_child(0).add_neighbor(get_child(15))
	get_child(0).add_neighbor(get_child(16))
	get_child(0).add_neighbor(get_child(17))
	get_child(0).add_neighbor(get_child(18))
	get_child(0).add_neighbor(get_child(19))
	get_child(0).add_neighbor(get_child(20))
	get_child(0).add_neighbor(get_child(21))
	get_child(0).add_neighbor(get_child(22))
	get_child(0).add_neighbor(get_child(33))
	get_child(0).add_neighbor(get_child(35))
	get_child(1).add_neighbor(get_child(0))
	get_child(1).add_neighbor(get_child(1))
	get_child(1).add_neighbor(get_child(2))
	get_child(1).add_neighbor(get_child(3))
	get_child(1).add_neighbor(get_child(4))
	get_child(1).add_neighbor(get_child(6))
	get_child(1).add_neighbor(get_child(7))
	get_child(1).add_neighbor(get_child(8))
	get_child(1).add_neighbor(get_child(9))
	get_child(1).add_neighbor(get_child(14))
	get_child(1).add_neighbor(get_child(15))
	get_child(1).add_neighbor(get_child(16))
	get_child(1).add_neighbor(get_child(17))
	get_child(1).add_neighbor(get_child(18))
	get_child(1).add_neighbor(get_child(24))
	get_child(1).add_neighbor(get_child(19))
	get_child(1).add_neighbor(get_child(20))
	get_child(1).add_neighbor(get_child(21))
	get_child(1).add_neighbor(get_child(22))
	get_child(1).add_neighbor(get_child(33))
	get_child(1).add_neighbor(get_child(35))
	get_child(1).add_neighbor(get_child(35))
	get_child(2).add_neighbor(get_child(0))
	get_child(2).add_neighbor(get_child(1))
	get_child(2).add_neighbor(get_child(3))
	get_child(2).add_neighbor(get_child(4))
	get_child(2).add_neighbor(get_child(6))
	get_child(2).add_neighbor(get_child(7))
	get_child(2).add_neighbor(get_child(8))
	get_child(2).add_neighbor(get_child(9))
	get_child(2).add_neighbor(get_child(14))
	get_child(2).add_neighbor(get_child(15))
	get_child(2).add_neighbor(get_child(16))
	get_child(2).add_neighbor(get_child(17))
	get_child(2).add_neighbor(get_child(18))
	get_child(2).add_neighbor(get_child(19))
	get_child(2).add_neighbor(get_child(20))
	get_child(2).add_neighbor(get_child(24))
	get_child(2).add_neighbor(get_child(21))
	get_child(2).add_neighbor(get_child(22))
	get_child(2).add_neighbor(get_child(33))
	get_child(2).add_neighbor(get_child(35))
	get_child(2).add_neighbor(get_child(35))
	get_child(3).add_neighbor(get_child(5))
	get_child(3).add_neighbor(get_child(0))
	get_child(3).add_neighbor(get_child(1))
	get_child(3).add_neighbor(get_child(2))
	get_child(3).add_neighbor(get_child(4))
	get_child(3).add_neighbor(get_child(6))
	get_child(3).add_neighbor(get_child(7))
	get_child(3).add_neighbor(get_child(8))
	get_child(3).add_neighbor(get_child(9))
	get_child(3).add_neighbor(get_child(14))
	get_child(3).add_neighbor(get_child(15))
	get_child(3).add_neighbor(get_child(16))
	get_child(3).add_neighbor(get_child(17))
	get_child(3).add_neighbor(get_child(18))
	get_child(3).add_neighbor(get_child(24))
	get_child(3).add_neighbor(get_child(19))
	get_child(3).add_neighbor(get_child(20))
	get_child(3).add_neighbor(get_child(21))
	get_child(3).add_neighbor(get_child(22))
	get_child(3).add_neighbor(get_child(33))
	get_child(3).add_neighbor(get_child(35))
	get_child(3).add_neighbor(get_child(35))
	get_child(4).add_neighbor(get_child(5))
	get_child(4).add_neighbor(get_child(0))
	get_child(4).add_neighbor(get_child(1))
	get_child(4).add_neighbor(get_child(2))
	get_child(4).add_neighbor(get_child(3))
	get_child(4).add_neighbor(get_child(6))
	get_child(4).add_neighbor(get_child(7))
	get_child(4).add_neighbor(get_child(8))
	get_child(4).add_neighbor(get_child(9))
	get_child(4).add_neighbor(get_child(14))
	get_child(4).add_neighbor(get_child(15))
	get_child(4).add_neighbor(get_child(16))
	get_child(4).add_neighbor(get_child(17))
	get_child(4).add_neighbor(get_child(18))
	get_child(4).add_neighbor(get_child(19))
	get_child(4).add_neighbor(get_child(24))
	get_child(4).add_neighbor(get_child(20))
	get_child(4).add_neighbor(get_child(21))
	get_child(4).add_neighbor(get_child(22))
	get_child(4).add_neighbor(get_child(33))
	get_child(4).add_neighbor(get_child(35))
	get_child(4).add_neighbor(get_child(35))
	get_child(5).add_neighbor(get_child(4))
	get_child(5).add_neighbor(get_child(6))
	get_child(5).add_neighbor(get_child(3))
	get_child(5).add_neighbor(get_child(11))
	get_child(6).add_neighbor(get_child(0))
	get_child(6).add_neighbor(get_child(1))
	get_child(6).add_neighbor(get_child(2))
	get_child(6).add_neighbor(get_child(3))
	get_child(6).add_neighbor(get_child(4))
	get_child(6).add_neighbor(get_child(7))
	get_child(6).add_neighbor(get_child(8))
	get_child(6).add_neighbor(get_child(9))
	get_child(6).add_neighbor(get_child(14))
	get_child(6).add_neighbor(get_child(15))
	get_child(6).add_neighbor(get_child(16))
	get_child(6).add_neighbor(get_child(17))
	get_child(6).add_neighbor(get_child(18))
	get_child(6).add_neighbor(get_child(19))
	get_child(6).add_neighbor(get_child(20))
	get_child(6).add_neighbor(get_child(21))
	get_child(6).add_neighbor(get_child(22))
	get_child(6).add_neighbor(get_child(24))
	get_child(6).add_neighbor(get_child(33))
	get_child(6).add_neighbor(get_child(35))
	get_child(6).add_neighbor(get_child(35))
	get_child(7).add_neighbor(get_child(0))
	get_child(7).add_neighbor(get_child(1))
	get_child(7).add_neighbor(get_child(2))
	get_child(7).add_neighbor(get_child(3))
	get_child(7).add_neighbor(get_child(4))
	get_child(7).add_neighbor(get_child(6))
	get_child(7).add_neighbor(get_child(8))
	get_child(7).add_neighbor(get_child(9))
	get_child(7).add_neighbor(get_child(14))
	get_child(7).add_neighbor(get_child(15))
	get_child(7).add_neighbor(get_child(16))
	get_child(7).add_neighbor(get_child(17))
	get_child(7).add_neighbor(get_child(18))
	get_child(7).add_neighbor(get_child(19))
	get_child(7).add_neighbor(get_child(20))
	get_child(7).add_neighbor(get_child(21))
	get_child(7).add_neighbor(get_child(22))
	get_child(7).add_neighbor(get_child(24))
	get_child(7).add_neighbor(get_child(33))
	get_child(7).add_neighbor(get_child(35))
	get_child(7).add_neighbor(get_child(35))
	get_child(8).add_neighbor(get_child(0))
	get_child(8).add_neighbor(get_child(1))
	get_child(8).add_neighbor(get_child(2))
	get_child(8).add_neighbor(get_child(3))
	get_child(8).add_neighbor(get_child(4))
	get_child(8).add_neighbor(get_child(6))
	get_child(8).add_neighbor(get_child(7))
	get_child(8).add_neighbor(get_child(9))
	get_child(8).add_neighbor(get_child(14))
	get_child(8).add_neighbor(get_child(15))
	get_child(8).add_neighbor(get_child(16))
	get_child(8).add_neighbor(get_child(17))
	get_child(8).add_neighbor(get_child(18))
	get_child(8).add_neighbor(get_child(19))
	get_child(8).add_neighbor(get_child(20))
	get_child(8).add_neighbor(get_child(21))
	get_child(8).add_neighbor(get_child(22))
	get_child(8).add_neighbor(get_child(24))
	get_child(33).add_neighbor(get_child(25))
	get_child(8).add_neighbor(get_child(29))	
	get_child(8).add_neighbor(get_child(30))
	get_child(8).add_neighbor(get_child(31))	
	get_child(8).add_neighbor(get_child(32))
	get_child(8).add_neighbor(get_child(33))
	get_child(8).add_neighbor(get_child(34))
	get_child(8).add_neighbor(get_child(35))
	get_child(9).add_neighbor(get_child(0))	
	get_child(9).add_neighbor(get_child(1))
	get_child(9).add_neighbor(get_child(2))
	get_child(9).add_neighbor(get_child(3))
	get_child(9).add_neighbor(get_child(4))
	get_child(9).add_neighbor(get_child(6))
	get_child(9).add_neighbor(get_child(7))
	get_child(9).add_neighbor(get_child(8))
	get_child(9).add_neighbor(get_child(14))
	get_child(9).add_neighbor(get_child(15))
	get_child(9).add_neighbor(get_child(16))
	get_child(9).add_neighbor(get_child(17))
	get_child(9).add_neighbor(get_child(18))
	get_child(9).add_neighbor(get_child(19))
	get_child(9).add_neighbor(get_child(20))
	get_child(9).add_neighbor(get_child(21))
	get_child(9).add_neighbor(get_child(22))
	get_child(9).add_neighbor(get_child(24))
	get_child(9).add_neighbor(get_child(29))	
	get_child(9).add_neighbor(get_child(30))
	get_child(9).add_neighbor(get_child(31))	
	get_child(9).add_neighbor(get_child(32))
	get_child(9).add_neighbor(get_child(33))
	get_child(9).add_neighbor(get_child(34))
	get_child(9).add_neighbor(get_child(35))
	get_child(9).add_neighbor(get_child(10))
	get_child(9).add_neighbor(get_child(25))
	get_child(10).add_neighbor(get_child(9))
	get_child(10).add_neighbor(get_child(11))
	get_child(10).add_neighbor(get_child(12))
	get_child(10).add_neighbor(get_child(23))
	get_child(11).add_neighbor(get_child(5))
	get_child(11).add_neighbor(get_child(23))
	get_child(11).add_neighbor(get_child(10))
	get_child(12).add_neighbor(get_child(13))
	get_child(12).add_neighbor(get_child(25))
	get_child(12).add_neighbor(get_child(10))
	get_child(13).add_neighbor(get_child(23))
	get_child(13).add_neighbor(get_child(12))
	get_child(13).add_neighbor(get_child(26))
	get_child(14).add_neighbor(get_child(1))
	get_child(14).add_neighbor(get_child(2))
	get_child(14).add_neighbor(get_child(3))
	get_child(14).add_neighbor(get_child(4))
	get_child(14).add_neighbor(get_child(6))
	get_child(14).add_neighbor(get_child(7))
	get_child(14).add_neighbor(get_child(8))
	get_child(14).add_neighbor(get_child(9))
	get_child(14).add_neighbor(get_child(24))
	get_child(14).add_neighbor(get_child(0))
	get_child(14).add_neighbor(get_child(15))
	get_child(14).add_neighbor(get_child(16))
	get_child(14).add_neighbor(get_child(17))
	get_child(14).add_neighbor(get_child(18))
	get_child(14).add_neighbor(get_child(19))
	get_child(14).add_neighbor(get_child(20))
	get_child(14).add_neighbor(get_child(21))
	get_child(14).add_neighbor(get_child(22))
	get_child(14).add_neighbor(get_child(33))
	get_child(14).add_neighbor(get_child(35))
	get_child(15).add_neighbor(get_child(1))
	get_child(15).add_neighbor(get_child(2))
	get_child(15).add_neighbor(get_child(3))
	get_child(15).add_neighbor(get_child(4))
	get_child(15).add_neighbor(get_child(6))
	get_child(15).add_neighbor(get_child(7))
	get_child(15).add_neighbor(get_child(8))
	get_child(15).add_neighbor(get_child(9))
	get_child(15).add_neighbor(get_child(14))
	get_child(15).add_neighbor(get_child(24))
	get_child(15).add_neighbor(get_child(0))
	get_child(15).add_neighbor(get_child(16))
	get_child(15).add_neighbor(get_child(17))
	get_child(15).add_neighbor(get_child(18))
	get_child(15).add_neighbor(get_child(19))
	get_child(15).add_neighbor(get_child(20))
	get_child(15).add_neighbor(get_child(21))
	get_child(15).add_neighbor(get_child(22))
	get_child(15).add_neighbor(get_child(33))
	get_child(15).add_neighbor(get_child(35))
	get_child(16).add_neighbor(get_child(1))
	get_child(16).add_neighbor(get_child(2))
	get_child(16).add_neighbor(get_child(3))
	get_child(16).add_neighbor(get_child(4))
	get_child(16).add_neighbor(get_child(6))
	get_child(16).add_neighbor(get_child(7))
	get_child(16).add_neighbor(get_child(8))
	get_child(16).add_neighbor(get_child(9))
	get_child(16).add_neighbor(get_child(14))
	get_child(16).add_neighbor(get_child(15))
	get_child(16).add_neighbor(get_child(24))
	get_child(16).add_neighbor(get_child(0))
	get_child(16).add_neighbor(get_child(17))
	get_child(16).add_neighbor(get_child(18))
	get_child(16).add_neighbor(get_child(19))
	get_child(16).add_neighbor(get_child(20))
	get_child(16).add_neighbor(get_child(21))
	get_child(16).add_neighbor(get_child(22))
	get_child(16).add_neighbor(get_child(33))
	get_child(16).add_neighbor(get_child(35))
	get_child(17).add_neighbor(get_child(1))
	get_child(17).add_neighbor(get_child(2))
	get_child(17).add_neighbor(get_child(3))
	get_child(17).add_neighbor(get_child(4))
	get_child(17).add_neighbor(get_child(6))
	get_child(17).add_neighbor(get_child(7))
	get_child(17).add_neighbor(get_child(8))
	get_child(17).add_neighbor(get_child(9))
	get_child(17).add_neighbor(get_child(14))
	get_child(17).add_neighbor(get_child(24))
	get_child(17).add_neighbor(get_child(15))
	get_child(17).add_neighbor(get_child(16))
	get_child(17).add_neighbor(get_child(0))
	get_child(17).add_neighbor(get_child(18))
	get_child(17).add_neighbor(get_child(19))
	get_child(17).add_neighbor(get_child(20))
	get_child(17).add_neighbor(get_child(21))
	get_child(17).add_neighbor(get_child(22))
	get_child(17).add_neighbor(get_child(33))
	get_child(17).add_neighbor(get_child(35))
	get_child(18).add_neighbor(get_child(0))
	get_child(18).add_neighbor(get_child(1))
	get_child(18).add_neighbor(get_child(2))
	get_child(18).add_neighbor(get_child(3))
	get_child(18).add_neighbor(get_child(4))
	get_child(18).add_neighbor(get_child(6))
	get_child(18).add_neighbor(get_child(7))
	get_child(18).add_neighbor(get_child(9))
	get_child(18).add_neighbor(get_child(14))
	get_child(18).add_neighbor(get_child(15))
	get_child(18).add_neighbor(get_child(16))
	get_child(18).add_neighbor(get_child(17))
	get_child(18).add_neighbor(get_child(8))
	get_child(18).add_neighbor(get_child(19))
	get_child(18).add_neighbor(get_child(24))
	get_child(18).add_neighbor(get_child(20))
	get_child(18).add_neighbor(get_child(21))
	get_child(18).add_neighbor(get_child(22))
	get_child(18).add_neighbor(get_child(29))	
	get_child(18).add_neighbor(get_child(30))
	get_child(18).add_neighbor(get_child(31))	
	get_child(18).add_neighbor(get_child(32))
	get_child(18).add_neighbor(get_child(33))
	get_child(18).add_neighbor(get_child(34))
	get_child(18).add_neighbor(get_child(35))
	get_child(19).add_neighbor(get_child(0))
	get_child(19).add_neighbor(get_child(1))
	get_child(19).add_neighbor(get_child(2))
	get_child(19).add_neighbor(get_child(3))
	get_child(19).add_neighbor(get_child(4))
	get_child(19).add_neighbor(get_child(6))
	get_child(19).add_neighbor(get_child(7))
	get_child(19).add_neighbor(get_child(9))
	get_child(19).add_neighbor(get_child(14))
	get_child(19).add_neighbor(get_child(15))
	get_child(19).add_neighbor(get_child(16))
	get_child(19).add_neighbor(get_child(24))
	get_child(19).add_neighbor(get_child(17))
	get_child(19).add_neighbor(get_child(18))
	get_child(19).add_neighbor(get_child(9))
	get_child(19).add_neighbor(get_child(20))
	get_child(19).add_neighbor(get_child(21))
	get_child(19).add_neighbor(get_child(22))
	get_child(19).add_neighbor(get_child(25))
	get_child(19).add_neighbor(get_child(29))	
	get_child(19).add_neighbor(get_child(30))
	get_child(19).add_neighbor(get_child(31))	
	get_child(19).add_neighbor(get_child(32))
	get_child(19).add_neighbor(get_child(33))
	get_child(19).add_neighbor(get_child(34))
	get_child(19).add_neighbor(get_child(35))
	get_child(20).add_neighbor(get_child(0))
	get_child(20).add_neighbor(get_child(1))
	get_child(20).add_neighbor(get_child(2))
	get_child(20).add_neighbor(get_child(3))
	get_child(20).add_neighbor(get_child(4))
	get_child(20).add_neighbor(get_child(6))
	get_child(20).add_neighbor(get_child(7))
	get_child(20).add_neighbor(get_child(9))
	get_child(20).add_neighbor(get_child(14))
	get_child(20).add_neighbor(get_child(15))
	get_child(20).add_neighbor(get_child(16))
	get_child(20).add_neighbor(get_child(17))
	get_child(20).add_neighbor(get_child(18))
	get_child(20).add_neighbor(get_child(19))
	get_child(20).add_neighbor(get_child(8))
	get_child(20).add_neighbor(get_child(21))
	get_child(20).add_neighbor(get_child(22))
	get_child(20).add_neighbor(get_child(29))	
	get_child(20).add_neighbor(get_child(30))
	get_child(20).add_neighbor(get_child(24))
	get_child(20).add_neighbor(get_child(31))
	get_child(20).add_neighbor(get_child(25))	
	get_child(20).add_neighbor(get_child(32))
	get_child(20).add_neighbor(get_child(33))
	get_child(20).add_neighbor(get_child(34))
	get_child(20).add_neighbor(get_child(35))
	get_child(21).add_neighbor(get_child(0))
	get_child(21).add_neighbor(get_child(1))
	get_child(21).add_neighbor(get_child(2))
	get_child(21).add_neighbor(get_child(3))
	get_child(21).add_neighbor(get_child(4))
	get_child(21).add_neighbor(get_child(6))
	get_child(21).add_neighbor(get_child(7))
	get_child(21).add_neighbor(get_child(9))
	get_child(21).add_neighbor(get_child(14))
	get_child(21).add_neighbor(get_child(15))
	get_child(21).add_neighbor(get_child(16))
	get_child(21).add_neighbor(get_child(17))
	get_child(21).add_neighbor(get_child(18))
	get_child(21).add_neighbor(get_child(19))
	get_child(21).add_neighbor(get_child(20))
	get_child(21).add_neighbor(get_child(8))
	get_child(21).add_neighbor(get_child(25))
	get_child(21).add_neighbor(get_child(22))
	get_child(21).add_neighbor(get_child(29))	
	get_child(21).add_neighbor(get_child(30))
	get_child(21).add_neighbor(get_child(31))	
	get_child(21).add_neighbor(get_child(32))
	get_child(21).add_neighbor(get_child(33))
	get_child(21).add_neighbor(get_child(24))
	get_child(21).add_neighbor(get_child(34))
	get_child(21).add_neighbor(get_child(35))
	get_child(22).add_neighbor(get_child(0))
	get_child(22).add_neighbor(get_child(1))
	get_child(22).add_neighbor(get_child(2))
	get_child(22).add_neighbor(get_child(3))
	get_child(22).add_neighbor(get_child(4))
	get_child(22).add_neighbor(get_child(6))
	get_child(22).add_neighbor(get_child(7))
	get_child(22).add_neighbor(get_child(9))
	get_child(22).add_neighbor(get_child(14))
	get_child(22).add_neighbor(get_child(15))
	get_child(22).add_neighbor(get_child(16))
	get_child(22).add_neighbor(get_child(17))
	get_child(22).add_neighbor(get_child(24))
	get_child(22).add_neighbor(get_child(18))
	get_child(22).add_neighbor(get_child(19))
	get_child(22).add_neighbor(get_child(20))
	get_child(22).add_neighbor(get_child(25))
	get_child(22).add_neighbor(get_child(21))
	get_child(22).add_neighbor(get_child(8))
	get_child(22).add_neighbor(get_child(29))	
	get_child(22).add_neighbor(get_child(30))
	get_child(22).add_neighbor(get_child(31))	
	get_child(22).add_neighbor(get_child(32))
	get_child(22).add_neighbor(get_child(33))
	get_child(22).add_neighbor(get_child(34))
	get_child(22).add_neighbor(get_child(35))
	get_child(23).add_neighbor(get_child(11))
	get_child(23).add_neighbor(get_child(13))
	get_child(23).add_neighbor(get_child(27))
	get_child(23).add_neighbor(get_child(26))
	get_child(24).add_neighbor(get_child(0))
	get_child(24).add_neighbor(get_child(1))
	get_child(24).add_neighbor(get_child(2))
	get_child(24).add_neighbor(get_child(3))
	get_child(24).add_neighbor(get_child(4))
	get_child(24).add_neighbor(get_child(6))
	get_child(24).add_neighbor(get_child(7))
	get_child(24).add_neighbor(get_child(9))
	get_child(24).add_neighbor(get_child(14))
	get_child(24).add_neighbor(get_child(15))
	get_child(24).add_neighbor(get_child(16))
	get_child(24).add_neighbor(get_child(17))
	get_child(24).add_neighbor(get_child(18))
	get_child(24).add_neighbor(get_child(19))
	get_child(24).add_neighbor(get_child(20))
	get_child(24).add_neighbor(get_child(21))
	get_child(24).add_neighbor(get_child(8))
	get_child(24).add_neighbor(get_child(22))
	get_child(24).add_neighbor(get_child(29))	
	get_child(24).add_neighbor(get_child(30))
	get_child(24).add_neighbor(get_child(31))	
	get_child(24).add_neighbor(get_child(32))
	get_child(24).add_neighbor(get_child(33))
	get_child(24).add_neighbor(get_child(34))
	get_child(24).add_neighbor(get_child(35))
	get_child(25).add_neighbor(get_child(8))
	get_child(25).add_neighbor(get_child(9))
	get_child(25).add_neighbor(get_child(19))
	get_child(25).add_neighbor(get_child(20))
	get_child(25).add_neighbor(get_child(21))
	get_child(25).add_neighbor(get_child(22))
	get_child(25).add_neighbor(get_child(24))
	get_child(25).add_neighbor(get_child(27))
	get_child(25).add_neighbor(get_child(26))
	get_child(25).add_neighbor(get_child(28))
	get_child(25).add_neighbor(get_child(29))
	get_child(25).add_neighbor(get_child(30))
	get_child(25).add_neighbor(get_child(31))
	get_child(25).add_neighbor(get_child(32))
	get_child(25).add_neighbor(get_child(33))
	get_child(25).add_neighbor(get_child(34))
	get_child(25).add_neighbor(get_child(35))
	get_child(25).add_neighbor(get_child(12))
	get_child(26).add_neighbor(get_child(8))
	get_child(26).add_neighbor(get_child(9))
	get_child(26).add_neighbor(get_child(19))
	get_child(26).add_neighbor(get_child(20))
	get_child(26).add_neighbor(get_child(21))
	get_child(26).add_neighbor(get_child(22))
	get_child(26).add_neighbor(get_child(24))
	get_child(26).add_neighbor(get_child(25))
	get_child(26).add_neighbor(get_child(28))
	get_child(26).add_neighbor(get_child(29))
	get_child(26).add_neighbor(get_child(30))
	get_child(26).add_neighbor(get_child(31))
	get_child(26).add_neighbor(get_child(32))
	get_child(26).add_neighbor(get_child(33))
	get_child(26).add_neighbor(get_child(34))
	get_child(26).add_neighbor(get_child(35))
	get_child(26).add_neighbor(get_child(13))
	get_child(26).add_neighbor(get_child(27))
	get_child(27).add_neighbor(get_child(26))
	get_child(27).add_neighbor(get_child(23))
	get_child(27).add_neighbor(get_child(28))
	get_child(28).add_neighbor(get_child(8))
	get_child(28).add_neighbor(get_child(9))
	get_child(28).add_neighbor(get_child(19))
	get_child(28).add_neighbor(get_child(20))
	get_child(28).add_neighbor(get_child(21))
	get_child(28).add_neighbor(get_child(22))
	get_child(28).add_neighbor(get_child(24))
	get_child(28).add_neighbor(get_child(25))
	get_child(28).add_neighbor(get_child(26))
	get_child(28).add_neighbor(get_child(29))
	get_child(28).add_neighbor(get_child(30))
	get_child(28).add_neighbor(get_child(31))
	get_child(28).add_neighbor(get_child(32))
	get_child(28).add_neighbor(get_child(33))
	get_child(28).add_neighbor(get_child(34))
	get_child(28).add_neighbor(get_child(35))
	get_child(28).add_neighbor(get_child(36))
	get_child(29).add_neighbor(get_child(8))
	get_child(29).add_neighbor(get_child(9))
	get_child(29).add_neighbor(get_child(19))
	get_child(29).add_neighbor(get_child(20))
	get_child(29).add_neighbor(get_child(21))
	get_child(29).add_neighbor(get_child(22))
	get_child(29).add_neighbor(get_child(24))
	get_child(29).add_neighbor(get_child(26))
	get_child(29).add_neighbor(get_child(28))
	get_child(29).add_neighbor(get_child(29))
	get_child(29).add_neighbor(get_child(30))
	get_child(29).add_neighbor(get_child(31))
	get_child(29).add_neighbor(get_child(32))
	get_child(29).add_neighbor(get_child(33))
	get_child(29).add_neighbor(get_child(34))
	get_child(29).add_neighbor(get_child(35))
	get_child(29).add_neighbor(get_child(25))
	get_child(29).add_neighbor(get_child(18))
	get_child(30).add_neighbor(get_child(8))
	get_child(30).add_neighbor(get_child(9))
	get_child(30).add_neighbor(get_child(19))
	get_child(30).add_neighbor(get_child(20))
	get_child(30).add_neighbor(get_child(21))
	get_child(30).add_neighbor(get_child(22))
	get_child(30).add_neighbor(get_child(24))
	get_child(30).add_neighbor(get_child(26))
	get_child(30).add_neighbor(get_child(28))
	get_child(30).add_neighbor(get_child(29))
	get_child(30).add_neighbor(get_child(30))
	get_child(30).add_neighbor(get_child(31))
	get_child(30).add_neighbor(get_child(32))
	get_child(30).add_neighbor(get_child(33))
	get_child(30).add_neighbor(get_child(34))
	get_child(30).add_neighbor(get_child(35))
	get_child(30).add_neighbor(get_child(25))
	get_child(30).add_neighbor(get_child(18))
	get_child(31).add_neighbor(get_child(8))
	get_child(31).add_neighbor(get_child(9))
	get_child(31).add_neighbor(get_child(19))
	get_child(31).add_neighbor(get_child(20))
	get_child(31).add_neighbor(get_child(21))
	get_child(31).add_neighbor(get_child(22))
	get_child(31).add_neighbor(get_child(24))
	get_child(31).add_neighbor(get_child(26))
	get_child(31).add_neighbor(get_child(28))
	get_child(31).add_neighbor(get_child(29))
	get_child(31).add_neighbor(get_child(30))
	get_child(31).add_neighbor(get_child(31))
	get_child(31).add_neighbor(get_child(32))
	get_child(31).add_neighbor(get_child(33))
	get_child(31).add_neighbor(get_child(34))
	get_child(31).add_neighbor(get_child(35))
	get_child(31).add_neighbor(get_child(25))
	get_child(31).add_neighbor(get_child(18))
	get_child(32).add_neighbor(get_child(8))
	get_child(32).add_neighbor(get_child(9))
	get_child(32).add_neighbor(get_child(19))
	get_child(32).add_neighbor(get_child(20))
	get_child(32).add_neighbor(get_child(21))
	get_child(32).add_neighbor(get_child(22))
	get_child(32).add_neighbor(get_child(24))
	get_child(32).add_neighbor(get_child(26))
	get_child(32).add_neighbor(get_child(28))
	get_child(32).add_neighbor(get_child(29))
	get_child(32).add_neighbor(get_child(30))
	get_child(32).add_neighbor(get_child(31))
	get_child(32).add_neighbor(get_child(32))
	get_child(32).add_neighbor(get_child(33))
	get_child(32).add_neighbor(get_child(34))
	get_child(32).add_neighbor(get_child(35))
	get_child(32).add_neighbor(get_child(25))
	get_child(32).add_neighbor(get_child(18))
	get_child(32).add_neighbor(get_child(33))
	get_child(34).add_neighbor(get_child(8))
	get_child(34).add_neighbor(get_child(9))
	get_child(34).add_neighbor(get_child(19))
	get_child(34).add_neighbor(get_child(20))
	get_child(34).add_neighbor(get_child(21))
	get_child(34).add_neighbor(get_child(22))
	get_child(34).add_neighbor(get_child(24))
	get_child(34).add_neighbor(get_child(26))
	get_child(34).add_neighbor(get_child(28))
	get_child(34).add_neighbor(get_child(29))
	get_child(34).add_neighbor(get_child(30))
	get_child(34).add_neighbor(get_child(31))
	get_child(34).add_neighbor(get_child(32))
	get_child(34).add_neighbor(get_child(33))
	get_child(34).add_neighbor(get_child(35))
	get_child(34).add_neighbor(get_child(25))
	get_child(34).add_neighbor(get_child(18))
	get_child(33).add_neighbor(get_child(0))	
	get_child(33).add_neighbor(get_child(1))
	get_child(33).add_neighbor(get_child(2))
	get_child(33).add_neighbor(get_child(3))
	get_child(33).add_neighbor(get_child(4))
	get_child(33).add_neighbor(get_child(6))
	get_child(33).add_neighbor(get_child(7))
	get_child(33).add_neighbor(get_child(8))
	get_child(33).add_neighbor(get_child(14))
	get_child(33).add_neighbor(get_child(15))
	get_child(33).add_neighbor(get_child(16))
	get_child(33).add_neighbor(get_child(17))
	get_child(33).add_neighbor(get_child(18))
	get_child(33).add_neighbor(get_child(19))
	get_child(33).add_neighbor(get_child(25))
	get_child(33).add_neighbor(get_child(20))
	get_child(33).add_neighbor(get_child(21))
	get_child(33).add_neighbor(get_child(22))
	get_child(33).add_neighbor(get_child(24))
	get_child(33).add_neighbor(get_child(29))	
	get_child(33).add_neighbor(get_child(30))
	get_child(33).add_neighbor(get_child(31))	
	get_child(33).add_neighbor(get_child(32))
	get_child(33).add_neighbor(get_child(9))
	get_child(33).add_neighbor(get_child(34))
	get_child(33).add_neighbor(get_child(35))
	get_child(33).add_neighbor(get_child(32))
	get_child(33).add_neighbor(get_child(10))
	get_child(35).add_neighbor(get_child(0))	
	get_child(35).add_neighbor(get_child(1))
	get_child(35).add_neighbor(get_child(2))
	get_child(35).add_neighbor(get_child(3))
	get_child(35).add_neighbor(get_child(4))
	get_child(35).add_neighbor(get_child(6))
	get_child(35).add_neighbor(get_child(7))
	get_child(35).add_neighbor(get_child(8))
	get_child(35).add_neighbor(get_child(14))
	get_child(35).add_neighbor(get_child(15))
	get_child(35).add_neighbor(get_child(16))
	get_child(35).add_neighbor(get_child(17))
	get_child(35).add_neighbor(get_child(18))
	get_child(35).add_neighbor(get_child(19))
	get_child(35).add_neighbor(get_child(20))
	get_child(35).add_neighbor(get_child(21))
	get_child(35).add_neighbor(get_child(22))
	get_child(35).add_neighbor(get_child(24))
	get_child(35).add_neighbor(get_child(29))	
	get_child(35).add_neighbor(get_child(30))
	get_child(35).add_neighbor(get_child(31))	
	get_child(35).add_neighbor(get_child(32))
	get_child(35).add_neighbor(get_child(33))
	get_child(35).add_neighbor(get_child(34))
	get_child(35).add_neighbor(get_child(9))
	get_child(35).add_neighbor(get_child(10))
	get_child(33).add_neighbor(get_child(25))
	
func Europe_nodes():
	#0 Iceland
	node_creator(332, 90, "atlantic", "europe")
	#1 British Isle
	node_creator(395, 125, "atlantic", "europe")
	#2 West Europe
	node_creator(435, 170, "atlantic", "europe")
	#3 East Europe
	node_creator(510, 150, "atlantic", "europe")
	#4 Scandi Navi
	node_creator(485, 90, "atlantic", "europe")
	#5 Russia
	node_creator(590, 120, "none", "europe")
	#6 Anatolia
	node_creator(560, 200, "atlantic", "europe")
	
func Middle_Asia_nodes():
	#7 Egypt
	node_creator(520, 270, "atlantic", "Middle asia")
	#8 Arabia
	node_creator(615, 280, "Indian", "Middle asia")
	#9 Persia
	node_creator(683, 230, "Indian", "Middle asia")
	#10 Kazakh Khanate
	node_creator(750, 175, "none", "Middle asia")
	#11 Urals
	node_creator(690, 110, "none", "Middle Asia")
	#12 West China
	node_creator(822, 215, "none", "Middle Asia")
	#13 Mongolia
	node_creator(875, 165, "none", "Middle Asia")
	
func Africa_nodes():
	#14 Barbary Coast
	node_creator(430, 250, "atlantic", "africa")
	#15 West Africa
	node_creator(378, 300, "atlantic", "africa")
	#16 Niger Basin
	node_creator(438, 330, "atlantic", "africa")
	#17 Congo Basin
	node_creator(500, 398, "atlantic", "africa")
	#18 South Africa
	node_creator(520, 510, "atlantic", "africa")
	#19 East Africa
	node_creator(560, 448, "Indian", "africa")
	#20 Madagastor
	node_creator(617, 478, "Indian", "africa")
	#21 Horn of Africa
	node_creator(585, 360, "Indian", "africa")
	
func East_Asia_nodes():
	#22 India
	node_creator(760, 275, "Indian", "EastAsia")
	#23 Siberia
	node_creator(835, 95, "none", "EastAsia")
	#24 Indo China
	node_creator(860, 300, "Indian", "EastAsia")
	#25 East China
	node_creator(910, 245, "Pacific", "EastAsia")
	#26 Manchuria
	node_creator(975, 165, "Pacific", "EastAsia")
	#27 Yakutia
	node_creator(953, 89, "none", "EastAsia")
	#28 Far East
	node_creator(1117, 89, "Pacific", "EastAsia")
	
	
func Oceania_nodes():
	#29 Japan
	node_creator(1027, 208, "Pacific", "Oceania")
	#30 Philip Pine
	node_creator(960, 329, "Pacific", "Oceania")
	#31 New Guinea
	node_creator(1040, 410, "Pacific", "Oceania")
	#32 East Australia
	node_creator(1053, 522, "Pacific", "Oceania")
	#33 West Australia
	node_creator(960, 512, "Indinan", "Oceania")
	#34 New Zealand
	node_creator(1120, 610, "Pacific", "Oceania")
	#35 Indonesia 
	node_creator(906, 392, "Indinan", "Oceania")
