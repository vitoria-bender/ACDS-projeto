extends Node2D

func _ready():
	pass 

func _process(_delta):
	pass


func _on_seta_l_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/sala1.tscn")
	pass


func _on_seta_r_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/sala3.tscn")
	pass 


func _on_entrar_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/cozinha1.tscn")
	pass 
