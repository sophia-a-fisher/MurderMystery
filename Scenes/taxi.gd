extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 170;
var deer_scene = preload("res://Scenes/deerhead.tscn")
var old_instance
var instance

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= (speed * delta);
	#if position.x < -1000:
	#	position.x = 300
		


func _on_Timer2_timeout():
	old_instance = instance
	instance = deer_scene.instance()
	get_parent().call_deferred("add_child",(instance))
	instance.position.x = position.x - 500
	instance.position.y = 202
	if old_instance:
		old_instance.queue_free()
		
	$Timer2.wait_time = rand_range(6,13)
