extends Node2D

var preloadedCar = preload("res://Characters/car.tscn")

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		print("pressed")
		var xPos = 200
		var yPos = 600
		var car = preloadedCar.instantiate()
		car.position = Vector2(xPos, yPos)
		get_tree().current_scene.add_child(car)
