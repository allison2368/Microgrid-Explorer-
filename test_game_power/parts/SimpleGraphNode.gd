extends GraphNode



func _ready():
	pass
	
	
	
func _on_close_request():
	queue_free()


func _on_resize_request(new_minsize):
	size = new_minsize
