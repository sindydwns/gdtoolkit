extends Label

@export var max_font_size = 100
@export var min_font_size = 20

func _ready():
	auto_size(text)

func set_text_auto_size(text: String)->int:
	set_text(text)
	return auto_size(text)

func auto_size(text: String)->int:
	if text.is_empty():
		add_theme_font_size_override("font_size", min_font_size)
		return min_font_size
	var font = get_theme_default_font()
	var is_ok = func(font_size):
		var s = SindyFont.get_font_rect_size(text, font, font_size)
		return s[0] <= size[0] and s[1] <= size[1]
	var font_size = SindyAlgorithm.binary_biggest(min_font_size, max_font_size, is_ok)
	add_theme_font_size_override("font_size", font_size)
	return font_size

func _draw():
	auto_size(text)

func _on_item_rect_changed():
	auto_size("")
	auto_size(text)
	queue_redraw()
