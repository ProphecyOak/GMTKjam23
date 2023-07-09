extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$music.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	$click.play()
	await get_tree().create_timer(.7).timeout
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")
