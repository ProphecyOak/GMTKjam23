extends Node2D

var column = 0
const moveSpeed = -64
var spriteNum = randf_range(1,2)

# Called when the node enters the scene tree for the first time
func _ready():
	if spriteNum > 1.5:
		$sprite.play("Sandro")
	else: 
		$sprite.play("Adam")
	$Timer.start(1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $SplatArea.has_overlapping_areas():
		print("dead")
		queue_free()

func move():
	if column == 15:
		print("Survived")
	else:
		move_local_x(moveSpeed)
		column +=1
		$Timer.start((randf_range(1, 2)))



func _on_timer_timeout():
	print("Done")
	move()
