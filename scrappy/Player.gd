extends CharacterBody2D

const bulletPath = preload('res://Bullet.tscn')

func _ready():
	pass #replace with function body
	
func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		print("im shooting")
		shoot()
		
func shoot():
	var bullet = bulletPath.instantiate()
	
	get_parent().add_child(bullet)
	bullet.position = $Marker2D.global_position
