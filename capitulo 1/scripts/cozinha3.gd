extends Node2D


func _ready():
	pass 
	
func _process(delta):
	pass


func _on_relogio_pressed(): 
	var atraso = $atraso
	if atraso != null:
		atraso.text = "Vou me atrasar para o trabalho..."
	else:
		print("Nó 'atraso' não encontrado na cena.")
	pass 


func _on_seta_l_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/cozinha2.tscn")
	pass 
	

func _on_seta_r_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/cozinha1.tscn")
	pass 
	
