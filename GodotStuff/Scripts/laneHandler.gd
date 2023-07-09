extends Node2D

var preloadedCar = preload("res://Characters/car.tscn")
@onready var carSignal = $"Signal"
@onready var carTimer = $"CarSpawnTimer"
var carAtLight = null

func _ready():
	randSpawnTime()
	carTimer.start()

func randSpawnTime():
	carTimer.wait_time = snapped(randf_range(4,6),.25)

func onSpawnTimer():
	var car = preloadedCar.instantiate()
	add_child(car)
	randSpawnTime()
	carTimer.set_paused(true)


func onCarArrived(area):
	if !carSignal.button_pressed:
		carAtLight = area.get_parent()
		carAtLight.atLight()


func onSignalChanged(button_pressed):
	if carAtLight != null:
		if button_pressed:
			carAtLight.lightGreen()


func carLeft(_area):
	carAtLight = null
	carTimer.set_paused(false)
