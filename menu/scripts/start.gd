extends Node2D

func _ready():
	pass
	
func _process(_delta):
	pass


func _on_init_game_finished():
	get_tree().change_scene_to_file("res://menu/cenas/menu.tscn")
	pass
