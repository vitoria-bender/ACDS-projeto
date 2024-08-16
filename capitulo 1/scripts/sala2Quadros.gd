extends Node2D

func _ready():
	pass 
	
func _process(_delta):
	pass

func _on_pôsteres_pressed():
	var textoPoster = $textoPoster
	if textoPoster != null:
		textoPoster.text = "Pôsteres de música."
		
	else:
		print("Nó 'textoPoster' não encontrado na cena.")
		 

func _on_sair_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/sala2.tscn")
	pass 
