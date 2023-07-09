extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	set_text("Score: 0")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_text("Score: " + str(Global.score))
