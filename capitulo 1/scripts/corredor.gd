extends Node2D

func _ready():
	pass

func _process(_delta):
	pass

func _on_quarto_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/quarto1.tscn")
	pass
	
func _on_sair_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/sala1.tscn")
	pass 
