extends RigidBody

onready var my_spawn = get_tree().get_root().find_node("BallSpawn", true, false)

func _ready():
#	var my_spawn = get_tree().get_root().find_node("BallSpawn", true, false)
	pass
	
func reset():
	translation = my_spawn.translation
	axis_lock_linear_x = false
	axis_lock_linear_y = false
	axis_lock_linear_z = false
	
func freeze():
	axis_lock_linear_x = true
	axis_lock_linear_y = true
	axis_lock_linear_z = true


func _on_Ball_body_shape_entered(body_id, body, body_shape, local_shape):
	if body is KinematicBody and not $AudioStreamPlayer.is_playing():
		$AudioStreamPlayer.play()
