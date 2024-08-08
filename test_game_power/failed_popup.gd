extends Window

signal try_again
signal quit


func _on_close_requested():
	hide()


func _on_try_again_pressed():
	try_again.emit()
	hide()
	get_tree().reload_current_scene()


func _on_quit_pressed():
	get_tree().change_scene_to_file("res://start_page.tscn")


func _on_level_select_pressed():
	get_tree().change_scene_to_file("res://level_select.tscn")
