extends PathFollow2D

@export var speed: float = 100.0  # Speed of the movement along the path

func _process(delta):
	offset += speed * delta  # Move along the path
