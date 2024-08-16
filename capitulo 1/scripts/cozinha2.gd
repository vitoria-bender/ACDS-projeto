extends Node2D

func _ready():
	pass 
	
func _process(delta):
	pass


func _on_seta_l_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/cozinha1.tscn")
	pass 


func _on_seta_r_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/cozinha3.tscn")
	pass

func _on_pôsteres_pressed():
	var textoPoster = $textoPoster
	if textoPoster != null:
		textoPoster.text = "Louça suja."
		
	else:
		print("Nó 'textoPoster' não encontrado na cena.")
