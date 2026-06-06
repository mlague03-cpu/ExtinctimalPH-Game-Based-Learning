extends Control
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

var selected_character = ""

func _on_boy_button_pressed():
	selected_character = "Boy"
	print("Boy Selected")

func _on_girl_button_pressed():
	selected_character = "Girl"
	print("Girl Selected")

func _on_continue_button_pressed():
	get_tree().change_scene_to_file("res://scenes/Exploration.tscn")
