extends Control

@onready var good_button = $Button_Good
@onready var good_image = $Button_Good/Button_Good_Image
@onready var evil_button = $Button_Evil
@onready var evil_image = $Button_Evil/Button_Evil_Image

# Checks button for hovering
func _process(_delta: float) -> void:
	check_hover(good_button, good_image)
	check_hover(evil_button, evil_image)

func check_hover(button : Button, image : TextureRect):
	if button.is_hovered():
		image.visible = true
	else:
		image.visible = false
