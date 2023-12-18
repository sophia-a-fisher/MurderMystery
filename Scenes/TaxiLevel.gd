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
#var last_instance


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("FadeIn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	fade_timer += delta
	if(fade_timer > 0.5) && !noise_setup:
		$RainNoise.play()
		noise_setup = true

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
