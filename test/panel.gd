extends Node

var info_popup = preload("res://sindy/ui/panel_info.tscn")
var confirm_popup = preload("res://sindy/ui/panel_confirm.tscn")
var toast_popup = preload("res://sindy/ui/panel_toast.tscn")

func _create_info_popup():
	var popup = info_popup.instantiate()
	popup.set_text("asdf")
	add_child(popup)

func _create_confirm_popup():
	var popup = confirm_popup.instantiate()
	popup.set_text("asdf")
	var message = func(text):
		var toast = toast_popup.instantiate()
		toast.set_text(text)
		add_child(toast)
	popup.canceled.connect(func(): message.call("canceled"))
	popup.accepted.connect(func(): message.call("accepted"))
	add_child(popup)

func _create_toast_popup():
	var popup = toast_popup.instantiate()
	popup.set_text("asdf")
	add_child(popup)
