extends AnimatedSprite2D

@export var verticalSpeed = 100


func _physics_process(delta):
	position.y -= verticalSpeed * delta


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

