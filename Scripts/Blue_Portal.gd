class_name Blue_Portal
extends Area2D
var target_scene = "res://Scenes/Levels/DemoScene.tscn" # Scene to transition to

func _ready() -> void:
	print("Portal Ready!") # Debugging: Check if the script is running 

func _on_body_entered(body) -> void:
	print("User entered portal. Wait 0.3 seconds for dramatic effect.")
	if body.is_in_group("player"):
		await get_tree().create_timer(0.3).timeout
		_next_scene()
		
func _on_body_exited(body) -> void:
	print("User tried to exit. Pulled through portal.")
	if body.is_in_group("player"):
		_next_scene()
		
func _next_scene() -> void:
	get_tree().change_scene_to_file(target_scene)
