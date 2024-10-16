extends Node2D

@onready var player = $beat as AudioStreamPlayer 
@onready var texto = $texto as Label
@onready var urso2 = $urso2 as TextureRect

var fading_in = false
var fadein_speed = 1.0
var fadein_start_time = 0.5
var fadein_duration =  6.0
var fading_out = false
var fade_speed = 0.5
var time_passed = 0.0
var fadeout_start_time = 20.0



func _ready():
	urso2.visible = false
	player.volume_db = -80
	pass

func _process(delta):
	if fading_in:
		time_passed += delta
		var progress = min(time_passed / fadein_duration, 3.0)
		var smooth_progress = progress * progress * (3.0 - 2.0 * progress)
		player.volume_db = lerp(-80, 0, smooth_progress)
		if progress >= 1.0:
			fading_in = false
	time_passed += delta
	if time_passed >= fadeout_start_time: 
		fading_out = true
	if fading_out:
		player.volume_db -= fade_speed * delta * 10
		if player.volume_db <= -80:
			player.stop()
			fading_out = false
			player.volume_db = 0
	pass
	
func _on_quadros_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/sala2Quadros.tscn")
	pass
	
	
func _on_seta_l_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/sala3.tscn")
	pass 

func _on_seta_r_pressed():
	get_tree().change_scene_to_file("res://capitulo 1/cenas/sala1.tscn")
	pass
	
func _on_musica_pressed():
	texto.text = "Uma das minhas maiores paixões..."
	await get_tree().create_timer(3.0).timeout
	texto.visible = false
	fading_in = true
	player.play()
	pass
	
func _on_urso_pressed():
	urso2.visible = not urso2.visible
	await get_tree().create_timer(1.0).timeout 
	$Label.text = "Sinto falta... De tudo..."
	$Label.visible = true

	await get_tree().create_timer(3.0).timeout 
	urso2.visible = false
	$Label.visible = false
