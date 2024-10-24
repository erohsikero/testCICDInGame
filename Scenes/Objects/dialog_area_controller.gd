extends Area2D

var is_active = false
var dialog_has_been_activated = false

@export var timeline = "test_timeline":
	get:
		return timeline
	set(value):
		timeline = value


func _ready() -> void:
	is_active = false
	dialog_has_been_activated = false
	Dialogic.signal_event.connect(_on_dialogic_signal)


func _process(delta: float) -> void:
	pass


func _on_area_entered(area: Area2D) -> void:
	is_active = true


func _on_area_exited(area: Area2D) -> void:
	is_active = false
	
func _input(event):
	
	if (event.is_action_pressed("interact") && is_active==true && !dialog_has_been_activated):
		Dialogic.start(timeline)
	
func _on_dialogic_signal(argument: String):
	
	if (argument=="start_dialog"):
		dialog_has_been_activated = true
