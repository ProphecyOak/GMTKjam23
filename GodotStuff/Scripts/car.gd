extends Node2D

@export var verticalSpeed = 100
var moving = true


func _physics_process(delta):
	if moving:
		position.y -= verticalSpeed * delta

func atLight():
	moving = false

func lightGreen():
	moving = true
	$AudioStreamPlayer.play()

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

