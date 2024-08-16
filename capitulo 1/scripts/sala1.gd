extends Node2D

@onready var fadeIn = $fade as ColorRect 
@onready var sair = $sair as Label
var fade_duration = 1.0
var start_fade = false 
var fade_direction = 1.0  
var elapsed_time = 0.0
var fade_in_done = false

func start_fade_in():
	start_fade = true
	pass

func _ready():
	sair.visible = false
	if not fade_in_done:
		fadeIn.modulate.a = 1.0 
	else:
		fadeIn.modulate.a = 0.0 
	pass 
	

	
func _on_seta_l_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/sala2.tscn")
	pass

func _on_seta_r_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/sala4.tscn")
	pass 
	
func _process(delta):
	var is_fading = true
	if is_fading:
		elapsed_time += delta
		var alpha = clamp(1.0 - (elapsed_time / fade_duration) * fade_direction, 0.0, 1.0)
		fadeIn.modulate.a = alpha
		
		if elapsed_time >= fade_duration:
			is_fading = false
			fade_in_done = true 
			if fade_direction == 1.0:
				fadeIn.modulate.a = 0.0
				fadeIn.visible = false
			else:
				fadeIn.modulate.a = 1.0
					
			if fade_direction == -1.0:
				get_tree().change_scene_to_file("res://capitulo 1/cenas/sala1.tscn")
	

func _on_porta_pressed():
	sair.visible = true
	sair.text = "ainda não posso sair."
	pass 
