extends Control

@onready var question = $QuizPanel/Question


func _ready():

	visible = false

	await get_tree().process_frame

	visible = true


func _on_answer_a_pressed():

	question.text = "❌ WRONG!\nTry Again."


func _on_answer_b_pressed():

	question.text = "✔ CORRECT!\nYou helped the animal!"

	await get_tree().create_timer(2.0).timeout

	get_tree().change_scene_to_file("res://scenes/ResultUI.tscn")


func _on_answer_c_pressed():

	question.text = "❌ WRONG!\nTry Again."
