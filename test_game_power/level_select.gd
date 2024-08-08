extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

	
func _on_lvl_1_pressed():
	get_tree().change_scene_to_file('res://level_1/level_1.tscn')


func _on_lvl_2_pressed():
	get_tree().change_scene_to_file('res://level_2/level_2.tscn')


func _on_lvl_3_pressed():
	get_tree().change_scene_to_file('res://level_3/level_3.tscn')


func _on_lvl_4_pressed():
	get_tree().change_scene_to_file('res://level_4/level_4.tscn')
