extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var dialogue_done = false


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("FadeIn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dialogue_done && !$AnimationPlayer.is_playing():
		$AnimationPlayer.play("FadeOut")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "FadeOut":
		#get_parent().get_parent().get_parent().switch_to_outside_scene()
		get_parent().get_parent().fade_gravel()
		pass
