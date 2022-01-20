extends SubViewportContainer

@onready var sub_viewport := $SubViewport as SubViewport
@onready var camera := $SubViewport/Camera3D as Camera3D
@onready var camera_base_fov := camera.fov


func _on_overscan_slider_value_changed(value: float) -> void:
	get_node("../OverscanSlider/Value").text = str(value).pad_decimals(2)
	anchor_top = -value + 1
	anchor_left = -value + 1
	anchor_bottom = value
	anchor_right = value
	
	# Calculate new FOV to look similar to the base FOV in the actual window.
	var aspect := (rect_size.x / DisplayServer.window_get_size().x)
	camera.fov = atan(tan(camera_base_fov * PI / 360.0) * aspect) * 360.0 / PI
