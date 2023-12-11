extends Node2D

@export var speed = 150

func start(pos):
	position = pos
	
func _process(delta):
	position.y += speed * delta
