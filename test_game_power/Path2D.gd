extends Path2D

# Constants for the sine wave
@export var amplitude: float = 5.0  # Amplitude of the sine wave
@export var frequency: float = 1.0    # Frequency of the sine wave
@export var phase: float = 0.0        # Phase shift of the sine wave
@export var length: float = 10.0     # Length of the path

func _ready():
	generate_sine_path()

func generate_sine_path():
	# Create a new Curve2D instance
	var curve = Curve2D.new()
	
	var step = 1.0  # Step size for the x-axis
	var x_pos: float
	var y_pos: float
	
	# Add points to the curve
	for x in range(int(length / step) + 1):
		x_pos = x * step
		y_pos = amplitude * sin(frequency * x_pos + phase)
		curve.add_point(Vector2(x_pos, y_pos))
		print("Adding point:", Vector2(x_pos, y_pos))

	# Set the curve to the Path2D
	self.curve = curve
	

