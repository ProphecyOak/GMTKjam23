extends Node2D

var preloadedFrog = preload("res://Characters/frog.tscn")
var frogsCreated = 0
var frogsCrossed = 0

func _ready():
	spawnFrog()

func spawnFrog():
	await get_tree().create_timer(snapped(randf_range(4,9),.25)).timeout
	var frog = preloadedFrog.instantiate()
	frog.position.y += randi_range(-64,64)
	add_child(frog)
	frogsCreated += 1
	spawnFrog()
