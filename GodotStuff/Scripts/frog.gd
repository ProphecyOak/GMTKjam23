extends Node2D

var deadTexture = load("res://Assets/DeadFrog.png")
var alive = true
var decaying = false
var column = 0
const moveSpeed = 64

func move():
	if alive:
		if column == 15:
			get_parent().frogsCrossed += 1
			if get_parent().frogsCrossed >= 3:
				print("GAME OVER")
			$Timer.stop()
		if !$NextLaneCarCheck.has_overlapping_areas():
			move_local_x(-moveSpeed)
			column += 1
		elif $OncomingCarCheck.has_overlapping_areas() and position.y >= 32:
			move_local_y(-moveSpeed*2)
		elif !$OncomingCarCheck.has_overlapping_areas() and position.y <= 100:
			move_local_y(moveSpeed)
		elif randf()<.2:
			move_local_x(moveSpeed)
			column -= 1
	if decaying:
		queue_free()

func _process(_delta):
	if $SplatArea.has_overlapping_areas():
		splat()
	if decaying:
		$Texture.modulate.a = $Timer.time_left/10

func splat():
	alive = false
	$OncomingCarCheck.visible = false
	$NextLaneCarCheck.visible = false
	$SplatArea.visible = false
	await get_tree().create_timer(.8).timeout
	$Timer.stop()
	$Timer.wait_time = 10
	$Timer.start()
	decaying = true
	$Texture.texture = deadTexture
	$Texture.queue_redraw()
