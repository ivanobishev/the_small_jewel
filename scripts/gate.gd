extends Node3D

var open = false

func toggle():
	if open:
		$AnimationPlayer.play("close")
		open = false
	else:
		$AnimationPlayer.play("open")
		open = true

func _input(event):
	if event.is_action_pressed("action"):
		toggle()
