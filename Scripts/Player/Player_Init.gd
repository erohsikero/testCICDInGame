extends CharacterBody2D

var speed: float = 200  # Default value

# Method to set player properties
func set_speed(new_speed: float) -> void:
	speed = new_speed
	print("Player speed set to: ", speed)

func _ready():
	print("Player initialized with speed: ", speed)
