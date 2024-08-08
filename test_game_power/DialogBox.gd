extends Control

var dialog_output = []
var dialog_index = 0
var finished = false
func _ready():
	load_dialog()
func _process(delta):
	if Input.is_action_just_pressed('ui_accept'):
		load_dialog()
		
func load_dialog():
	
	if dialog_index < Globals.DIALOG.size():
		var tween = get_tree().create_tween()
		$Label2.bbcode_text = Globals.DIALOG[dialog_index]
		
		tween.tween_property($Label2, "visible_characters", 0, .00001)
		tween.tween_property($Label2, "visible_characters", 200, 4)
		
	else:
		queue_free()
	dialog_index += 1
	
	
func add_new_output(output: String):
	dialog_output.push_back(str(output))
	$Label2.bbcode_text = dialog_output[-1]
	
	
#var tween = create_tween()
#
#	if dialog_index < Globals.DIALOG.size():
#		$Label2.bbcode_text = Globals.DIALOG[dialog_index]
#
#		tween.tween_property($Label2, "visible_characters", 0, .00001)
#		tween.tween_property($Label2, "visible_characters", 200, 4)
#
#	else:
#		queue_free()
#	dialog_index += 1
	
