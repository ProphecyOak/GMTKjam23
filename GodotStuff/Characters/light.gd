extends AnimatedSprite2D

signal triggerCars

# Called when the node enters the scene tree for the first time.
func _ready():
	play("red")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	play("green")
	emit_signal("triggerCars")


func _on_area_2d_mouse_exited():
	play("yellow")
	await get_tree().create_timer(2).timeout
	play("red")
