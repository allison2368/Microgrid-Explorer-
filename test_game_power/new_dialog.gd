extends Node2D

var dialog_output = []
var DialogNode


# Called when the node enters the scene tree for the first time.
func _ready():
	load_dialog()
	
func _process(delta):
	if Input.is_action_just_pressed('ui_accept'):
		load_dialog()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func add_new_output(output : String):
	dialog_output.push_back(str(output))
	DialogNode.bbcode_text = dialog_output[-1]
func load_dialog():
	DialogNode = $Dialog
	dialog_output.push_back("hi")
	DialogNode.bbcode_text = dialog_output[0]
