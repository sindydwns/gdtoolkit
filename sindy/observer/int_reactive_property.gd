class_name IntReactiveProperty
extends ReactiveProperty

@export var value: int:
	get: return get_value()
	set(v): set_value(v)

func _init():
	v = 0
