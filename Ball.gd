extends RigidBody2D

var ball_dir = 2

func _on_body_enter(body):
	body.set_axis_velocity(Vector2(ball_dir, randf() * ball_dir - 1).normalized())
	ball_dir -= 0.05