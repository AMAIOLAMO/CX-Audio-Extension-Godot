extends AudioStreamPlayer

class_name AudioInfoPlayer

func play_random(from: float = 0.0) -> void:
	play_random_with_pitch(audioInfo.get_pitch(), from)

func play_random_with_pitch(pitchScale: float, from: float = 0.0) -> void:
	if audioInfo.empty(): return
	# else
	stream = audioInfo.get_random()
	pitch_scale = pitchScale
	play(from)

export(Resource) onready var audioInfo = audioInfo as AudioInfo
