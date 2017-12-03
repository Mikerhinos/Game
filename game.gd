extends Node2D

var time = 0.0

func _ready():
	set_physics_process(true)

func _physics_process(delta):
	if(time >= 1):
		time = 0.0
		get_node("Zal/ZalS").set_flip_h(true)
	else:
		get_node("Zal/ZalS").set_flip_h(false)
		time += delta
