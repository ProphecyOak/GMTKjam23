extends Node2D

var preloadedPedestrian = preload("res://Characters/pedestrian.tscn")

func _ready():
	spawnPedestrian()

func spawnPedestrian():
	await get_tree().create_timer(snapped(randf_range(9,16),.25)).timeout
	var frog = preloadedPedestrian.instantiate()
	frog.position.y += randi_range(-64,64)
	add_child(frog)
	spawnPedestrian()
