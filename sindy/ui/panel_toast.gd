extends CanvasLayer

@export var display_time: float = 5

func _ready():
	get_tree().create_timer(display_time).timeout.connect(close)

func set_text(text: String):
	$Panel/MarginContainer/AutoLabel.text = text

func close():
	queue_free()
