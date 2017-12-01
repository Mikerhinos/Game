extends Node2D

const MOVE_SPEED = 5
var shoot_time=99999
const BULLET_VELOCITY = 1000

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	var which = get_name()
	if Input.is_action_pressed("ui_left") and position.x > 0 and rotation_degrees >= -70:
		rotate(-(MOVE_SPEED * delta)) # Si le joueur va à droite, tourner le lanceur à droite
	if Input.is_action_pressed("ui_right") and position.x < get_viewport_rect().size.x and rotation_degrees <= 70:
		rotate(MOVE_SPEED * delta) # Si le joueur va à gauche, tourner le lanceur à gauche
		
func _physics_process(delta):
	shoot_time += delta
	if Input.is_action_just_pressed("ui_select"):
		var shot = preload("res://Ball.tscn").instance()
		var shotvect = (get_node("player/bullet_shoot").global_position - position).normalized()
		get_parent().add_child(shot) 
		shot.position = get_node("player/bullet_shoot").global_position
		shot.set_linear_velocity(shotvect * BULLET_VELOCITY)
		#$sound_shoot.play()
		shoot_time = 0