extends CanvasLayer

signal accepted

@export var minimum_display_time: float = 0.5

var display_time = 0

func set_text(text):
	var label = $Panel/VBoxContainer/ContentPanel/ScrollContainer/AutoLabel
	label.set_text_auto_size(text)

func _process(delta):
	display_time += delta

func accept():
	if display_time < minimum_display_time:
		return
	accepted.emit()
	queue_free()
