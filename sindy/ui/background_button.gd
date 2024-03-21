extends ColorRect

signal pressed

func _on_basic_button_pressed():
	pressed.emit()
