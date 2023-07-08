extends Node2D

var preloadedCar = preload("res://Characters/car.tscn")

func _on_light_1_trigger_cars():
	var xPos = 200
	var yPos = 600
	var car = preloadedCar.instantiate()
	car.position = Vector2(xPos, yPos)
	get_tree().current_scene.add_child(car)


func _on_light_2_trigger_cars():
	var xPos = 450
	var yPos = 600
	var car = preloadedCar.instantiate()
	car.position = Vector2(xPos, yPos)
	get_tree().current_scene.add_child(car)


func _on_light_3_trigger_cars():
	var xPos = 700
	var yPos = 600
	var car = preloadedCar.instantiate()
	car.position = Vector2(xPos, yPos)
	get_tree().current_scene.add_child(car)


func _on_light_4_trigger_cars():
	var xPos = 950
	var yPos = 600
	var car = preloadedCar.instantiate()
	car.position = Vector2(xPos, yPos)
	get_tree().current_scene.add_child(car)
