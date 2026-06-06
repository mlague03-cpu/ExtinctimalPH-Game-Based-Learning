extends CharacterBody2D

@export var speed = 100

func _physics_process(delta: float) -> void:
	var dir = Vector2.ZERO
	
	# Get input for all 4 directions
	dir.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	dir.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	# Normalize to prevent faster diagonal movement, then apply speed
	velocity = dir.normalized() * speed
	move_and_slide()


func _on_philippine_eagle_body_entered(body: Node2D) -> void:
	pass # Replace with function body.


func _on_philippine_eagle_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	pass # Replace with function body.
