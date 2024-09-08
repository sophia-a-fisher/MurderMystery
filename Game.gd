extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var exposition_scene = preload("res://Scenes/TaxiLevel.tscn")
var outside_scene = preload("res://Scenes/Outside_Scene.tscn")
var spawned_exposition = false
var current_scene

# Called when the node enters the scene tree for the first time.
func _ready():
	switch_to_exposition();

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
		
func switch_to_exposition():
	current_scene = exposition_scene.instance()
	add_child(current_scene)
	
func switch_to_outside_scene():
	current_scene.queue_free()
	current_scene = outside_scene.instance()
	add_child(current_scene)
	
