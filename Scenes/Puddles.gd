extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var last_instance

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_exited(body):
	if body.is_in_group("taxi"):
		if get_parent().get_parent().instance_count > 3:
			last_instance = get_parent().get_parent().older_instance
		if last_instance:
			last_instance.queue_free()
			print("freeing puddles")
			#last_instance = get_parent().instance
	#pass # Replace with function body.


func _on_Area2D_body_entered(body):
	if body.is_in_group("taxi"):
		get_parent().get_parent().create_new_instance()
