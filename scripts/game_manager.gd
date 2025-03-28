extends Node

var scene = preload("res://scenes/Gameplay.tscn")

func start_game():
	transition_to_scene(scene.resource_path)
	
func exit_game():
	get_tree().quit()
	
func transition_to_scene(scene_path):
	await get_tree().create_timer(0.1).timeout
	get_tree().change_scene_to_file(scene_path)		
