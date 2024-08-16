extends Node2D

func _ready():
	pass 
	
func _process(_delta):
	pass


func _on_porta_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/corredor.tscn")
	pass 


func _on_seta_l_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/quarto2.tscn")
	pass 


func _on_seta_r_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/quarto1.tscn")
	pass 
