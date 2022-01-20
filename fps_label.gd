extends Label


func _process(_delta: float) -> void:
	text = "%d FPS (%.2f mspf)" % [Engine.get_frames_per_second(), 1000.0 / Engine.get_frames_per_second()]


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("toggle_animation"):
		get_node("../AnimationPlayer").playback_speed = not get_node("../AnimationPlayer").playback_speed
