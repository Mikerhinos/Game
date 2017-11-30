extends Sprite

const MOVE_SPEED = 5
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	var which = get_name()
	if Input.is_action_pressed("ui_left") and position.x > 0 and rotation >= -70:
		rotate(-(MOVE_SPEED * delta))
	if Input.is_action_pressed("ui_right") and position.x < get_viewport_rect().size.x and rotation <= 70:
		rotate(MOVE_SPEED * delta)
		