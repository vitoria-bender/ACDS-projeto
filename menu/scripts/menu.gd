extends Node2D


func _ready():
	pass 
	
func _process(_delta):
	pass


func _on_play_pressed():
	get_tree().change_scene_to_file("res://subconsciente/cenas/psique1.tscn")
	pass 
