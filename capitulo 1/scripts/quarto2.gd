extends Node2D

@onready var urso2 = $urso2 as TextureRect

func _ready():
	urso2.visible = false
	pass


func _process(_delta):
	pass


func _on_seta_r_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/quarto3.tscn")
	pass 

func _on_seta_l_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/quarto1.tscn")
	pass 

func _on_urso_pressed():
	urso2.visible = not urso2.visible
	await get_tree().create_timer(1.0).timeout 
	$Label.text = "... medicamentos..."
	$Label.visible = true
	
	await get_tree().create_timer(3.0).timeout 
	urso2.visible = false
	$Label.visible = false
