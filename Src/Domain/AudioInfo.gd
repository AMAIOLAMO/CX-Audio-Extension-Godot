extends Resource

class_name AudioInfo

func size() -> int:
	return _audios.size()

func empty() -> bool:
	return size() == 0

func get_audio() -> AudioStream:
	return _audios[0]

func get_random() -> AudioStream:
	if empty(): return null
	# else
	var index := randi() % _audios.size()
	return _audios[index] as AudioStream

func get_pitch_base() -> float:
	return _pitchBase

func get_pitch() -> float:
	var variation := abs(_pitchVariation)
	return _pitchBase + rand_range(-variation, variation)

export(Array, AudioStream) var _audios: Array
export var _pitchBase: float
export var _pitchVariation: float
