extends Node2D

@onready var panel = $panel 
@onready var label = $panel/label
@onready var button1 = $panel/button1
@onready var button2 = $panel/button2  
@onready var lembrancas = $lembrancas


var dialogues = [
	{
		"text": "Por que você continua voltando aqui?",
		"options": ["Eu preciso entender.", "Eu não consigo seguir em frente."]
	},
	{
		"text": "Entender não trará de volta o que foi perdido.",
		"options": ["Mas eu sinto que devo tentar.", "Nada parece real."]
	},
	{
		"text": "Você acha que poderia ter feito algo diferente?",
		"options": ["Sim, talvez eu pudesse.", "Não, mas eu ainda me culpo."]
	},
	{
		"text": "A culpa é um peso que você carrega sozinho.",
		"options": ["Eu não sei como deixar ir.", "Eu preciso de tempo."]
	},
	{
		"text": "O tempo pode curar, mas as cicatrizes sempre estarão lá.",
		"options": ["Eu não sei se estou pronto para isso.", "Acho que preciso seguir em frente."]
	}
]

var current_dialogue_index = 0  

func _ready():
	lembrancas.visible = false
	panel.visible = false  
	button1.visible = false  
	button2.visible = false 
	
	await get_tree().create_timer(1.0).timeout
	
	panel.visible = true  
	button1.visible = true 
	button2.visible = true  
	
	show_dialogue(current_dialogue_index)  

func show_dialogue(index):
	var dialogue = dialogues[index]
	label.text = dialogue["text"]
	button1.text = dialogue["options"][0]
	button2.text = dialogue["options"][1]

	button1.connect("pressed", Callable(self, "_on_option_button_pressed").bind(0))
	button2.connect("pressed", Callable(self, "_on_option_button_pressed").bind(1))

func _on_option_button_pressed(option_index):
	if current_dialogue_index < dialogues.size() - 1:
		current_dialogue_index += 1
		show_dialogue(current_dialogue_index) 
	else:
		panel.visible = false  
		print("Escolha feita:", dialogues[current_dialogue_index]["options"][option_index])
		pass
		await get_tree().create_timer(2.0).timeout
		_show_end_text()
		_end_minigame()
		
func _end_minigame() -> void:
	await get_tree().create_timer(2.0).timeout  
	get_tree().change_scene_to_file("res://capitulo 1/cenas/sala1.tscn")

func _show_end_text():
	lembrancas.text = "Mas você ainda sente." 
	lembrancas.visible = true 

