extends VehicleBody3D

var max_rpm = 500
var max_torque = 200

func _physics_process(delta):
	steering = lerp(steering, Input.get_axis("turn_right", "turn_left") * 0.4, 5 * delta)
	var acceleration = Input.get_axis("reverse", "accelerate")
	
	if acceleration < 0:
		acceleration /= 2
	var rpm = $BackLeftWheel.get_rpm()
	$BackLeftWheel.engine_force = acceleration * max_torque * (1 - rpm / max_rpm)
	rpm = $BackRightWheel.get_rpm()
	$BackRightWheel.engine_force = acceleration * max_torque * (1 - rpm / max_rpm)
