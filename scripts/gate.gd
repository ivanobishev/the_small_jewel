extends Node3D

var closed = true

func toggle():
	var tween = create_tween()
	var current_rotation = rad_to_deg(rotation.y)
	
	print(current_rotation)
	
	if closed:
		tween.tween_property($".", "rotation:y", deg_to_rad(current_rotation - 90), 3)
		closed = false
	else:
		tween.tween_property($".", "rotation:y", deg_to_rad(current_rotation + 90), 3)
		closed = true

func _input(event):
	if event.is_action_pressed("action"):
		toggle()
