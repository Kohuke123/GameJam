extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_window().set_size(Vector2(16*50, 9*50))
	 
	var posCenter = Vector2()
	DisplayServer.window_set_position( (Vector2i(DisplayServer.screen_get_size()) - Vector2i(DisplayServer.window_get_size_with_decorations())) / 2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
