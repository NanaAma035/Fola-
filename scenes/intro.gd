extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	
	$AnimationPlayer.play("fade in")
	await (get_tree().create_timer(6).timeout)
	$AnimationPlayer.play("fade out")
	await (get_tree().create_timer(3).timeout)
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
