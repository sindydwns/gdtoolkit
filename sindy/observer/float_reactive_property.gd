class_name FloatReactiveProperty
extends ReactiveProperty

@export var value: float:
	get: return get_value()
	set(v): set_value(v)

func _init():
	v = 0
