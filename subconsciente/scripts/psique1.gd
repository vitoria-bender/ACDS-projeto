extends Node2D

@onready var fade_rect = $fade_rect as ColorRect
@onready var novamente = $novamente as Label 
var fade_duration = 1.0  
var elapsed_time = 0.0
var is_fading_in = true

func _ready():
	fade_rect.modulate.a = 1.0 
	novamente.modulate.a = 1.0  
	novamente.visible = true
	fade_rect.visible = true
	elapsed_time = 0.0  
	

func _process(delta):
	if is_fading_in:
		elapsed_time += delta
		var alpha = 1.0 - (elapsed_time / fade_duration)
		fade_rect.modulate.a = clamp(alpha, 0.0, 1.0) 
		novamente.modulate.a = clamp(alpha, 0.0, 1.0)

		if elapsed_time >= fade_duration:
			novamente.text = "Aqui, novamente."
			is_fading_in = false  
			fade_rect.visible = false 
			novamente.modulate.a = 1.0

func _on_button_pressed():
	get_tree().change_scene_to_file("res://subconsciente/cenas/psique2.tscn")
