class_name SindyFont

static func get_font_rect_size(text: String, font: Font, font_size: int) -> Vector2:
	var textline = TextLine.new()
	textline.clear()
	textline.add_string(text, font, font_size)
	return textline.get_size()

static func get_font_rect_size_of(item: CanvasItem, text: String) -> Vector2:
	var font = item.get_theme_default_font()
	var size = item.get_theme_default_font_size()
	return get_font_rect_size(text, font, size)
