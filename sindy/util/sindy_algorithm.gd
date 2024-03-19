class_name SindyAlgorithm

static func binary_biggest(min: int, max: int, is_ok: Callable) -> int:
	if min >= max:
		return min
	var mid = ceil((min + max) * 0.5)
	if is_ok.call(mid) == true:
		return binary_biggest(mid, max, is_ok)
	return binary_biggest(min, mid - 1, is_ok)
