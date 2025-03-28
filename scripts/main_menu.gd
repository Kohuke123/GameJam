extends Control

<<<<<<< Updated upstream
=======
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_window().set_size(Vector2(16*50, 9*50))
	 
	var posCenter = Vector2()
	DisplayServer.window_set_position( (Vector2i(DisplayServer.screen_get_size()) - Vector2i(DisplayServer.window_get_size_with_decorations())) / 2)

>>>>>>> Stashed changes
func _on_start_button_pressed():
	GameManager.start_game()
	queue_free()

func _on_exit_button_pressed():
	GameManager.exit_game()
