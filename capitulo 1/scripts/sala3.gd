extends Node2D

func _ready():
	pass 

func _process(_delta):
	pass

func _on_seta_r_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/sala2.tscn")
	pass


func _on_seta_l_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/sala4.tscn")
	pass 
	
func _on_pôsteres_pressed():
	var textoPoster = $textoPoster
	if textoPoster != null:
		textoPoster.text = "Você parecia tão bem..."
		await get_tree().create_timer(3.0).timeout
		textoPoster.visible = false
		
	else:
		print("Nó 'textoPoster' não encontrado na cena.")
		 


func _on_porta_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/corredor.tscn")
	pass
	
