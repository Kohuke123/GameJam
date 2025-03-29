extends Node2D

var craft_window

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	craft_window = $AlchemyWindow


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GlobalVariables.craftEnable == true and $CRAFT.disabled == true:
		$CRAFT.disabled = false


func _on_craft_pressed() -> void:
	if GlobalVariables.craftEnable == true:
		craft_window.visible = true
		print("alchemy shown")
		$CRAFT.disabled = true
		GlobalVariables.craftEnable = false


func _on_bow_toggle_pressed() -> void:
	if $Bow.visible == true:
		$Bow.visible = false
	else:
		$Bow.visible = true
	print("tie visibility toggled")


func _on_settings_or_pause_pressed() -> void:
	print("paused")
	$PauseUI.visible = true
	get_tree().paused = true


func _on_pause_ui_resume_prompt() -> void:
	print("resumed")
	$PauseUI.visible = false
	get_tree().paused = false
