extends Node2D
var newInstanceScene = preload("res://Scenes/Puddles.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var instance_count = 1
var instance
var old_instance
var older_instance
var fade_timer = 0
var noise_setup = false
var text_box_displayed = false
#var last_instance
var dialogues = []
export (String, FILE, "*.json") var dialogue_file
var dialogue_index = 0
var displaying_text = false
var type_write = false
var dialogue_done = false


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("FadeIn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	fade_timer += delta
	if(fade_timer > 0.5) && !noise_setup:
		$RainNoise.play()
		noise_setup = true
		
	if(fade_timer > 10 && !text_box_displayed):
		display_textbox()
		
	if(fade_timer > 11) && !displaying_text:
		play_dialogue()
		
	#adding a jiggling arrow prompt
	if($CanvasLayer/text.percent_visible == 1) && !$CanvasLayer/promptMove.is_playing():
		$CanvasLayer/arrowPrompt.visible = true
		$CanvasLayer/promptMove.play("promptJiggle")
		
	if $CanvasLayer/text.percent_visible == 1:
		if($typewriter.playing):
			$typewriter.stop()
		type_write = false
		
	if type_write:
		$CanvasLayer/text.percent_visible += .01
		if(!$typewriter.playing):
			$typewriter.play()
			
	#if dialogue_done && !$AnimationPlayer.is_playing():
#	$AnimationPlayer.play("FadeOut")
	
func display_textbox():
	$CanvasLayer/textboxtest.visible = true
	$lowDrum.play()
	text_box_displayed = true	
		
func play_dialogue():
	dialogues = load_dialogue()
	$CanvasLayer/text.text = dialogues[dialogue_index]['text']
	type_write = true
	
	displaying_text = true
	
func _input(event):
	if event.is_action_pressed("dialogue_progress"):
		next_line()
		
func next_line():
	dialogue_index += 1
	if dialogue_index < dialogues.size():
		$CanvasLayer/text.text = dialogues[dialogue_index]['text']
		type_write = true
	else:
		$CanvasLayer/textboxtest.visible = false;
		$CanvasLayer/BlackScene.dialogue_done = true
	$CanvasLayer/text.percent_visible = 0
	$CanvasLayer/arrowPrompt.visible = false
		
		
func fade_gravel():
	$taxi.fade_taxi()
	
func load_dialogue():
	var file = File.new()
	if file.file_exists(dialogue_file):
		file.open(dialogue_file, file.READ)
		return parse_json(file.get_as_text())
		
func create_new_instance():
	print("created instance at" + str(-5100*instance_count))
	older_instance = old_instance
	old_instance = instance
	instance = newInstanceScene.instance()
	#instance.get_node("ParallaxBackground").offset.x = -5100
	instance.position.x = -5100 *instance_count
	get_node("Scene").call_deferred("add_child",instance)
	instance_count += 1
	
	#last_instance = instance
