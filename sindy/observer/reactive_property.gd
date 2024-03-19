class_name ReactiveProperty
extends Node

var v = null

signal changed(v)

var CONNECT_VALUE = 128

func subscribe(f: Callable, flags):
	var run_immediatly = flags & CONNECT_VALUE > 0
	flags = flags - CONNECT_VALUE if flags & CONNECT_VALUE else flags
	changed.connect(f, flags | CONNECT_VALUE)
	if run_immediatly:
		f.call(self.v)

func unsubscribe(f: Callable):
	changed.disconnect(f)

func get_value():
	return self.v

func set_value(value):
	if self.v == value:
		return
	self.v = value
	changed.emit(value)

func set_value_force(value):
	self.v = value
	changed.emit(value)
