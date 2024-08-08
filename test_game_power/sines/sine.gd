extends Node2D

@onready var line2d = $Line2D
@onready var animation_player = $AnimationPlayer
@onready var circle = $Sprite2D  # Adjust this if you use a different node for the circle

var num_points = 80
var amplitude = 50
var frequency = 5
var duration = 5.0  # Duration of the animation in seconds

func _ready():
	draw_sine_wave()


func draw_sine_wave():
	line2d.clear_points()
	
	for i in range(6, 45):
		var x = (i * (500 / num_points)) 
		var y = (amplitude * sin(frequency * x * (PI / 180)) + (648 / 2)) + 230
		var point = Vector2(x, y)
		line2d.add_point(point)
