extends Control

@onready var fail_pop_up_scene = load("res://failed_popup.tscn")
@onready var success_pop_up_scene = load("res://success_popup.tscn")
@onready var draw_node = get_node("GraphEdit/Node2D")
@onready var timer = get_node("Timer")
@onready var timer2 = get_node("Timer2")


var timerswitch = true
var power = load("res://parts/power_node.tscn")
var new_load = load("res://parts/load_node.tscn")
var new_solar = load("res://parts/solar_node.tscn")
var dialog_scene = preload("res://dialogbox.tscn")

var initial_position = Vector2(40, 40)
var node_index = 0
var play = false

# Called when the node enters the scene tree for the first time.
func _ready():
	# adds the generator and the load at the start of the level 
	var node1 = power.instantiate()
	var node2 = new_load.instantiate()
	$GraphEdit.add_child(node1)
	node1.set_slot_enabled_right(0, false)
	node2.set_slot_enabled_right(0, false)
	node2.set_slot_enabled_left(0, false)
	$GraphEdit.add_child(node2)
	$GraphEdit.set_connection_lines_thickness(15.0)
	
	$GraphEdit.get_zoom_hbox().set_visible(false)
	$Control2/freq.hide()
	var dialog = dialog_scene.instantiate()
	Globals.DIALOG = ['Welcome! Hit enter to continue', 'Welcome to Microgrid Explorer!', 'For the first few levels, the goal will be to explore the elements of a microgrid system and how they interact!', 'Hit enter to finish the dialogue, then hit the PLAY button to complete the first level']
	$GraphEdit.add_child(dialog)

#	Globals.DIALOG = ['', 'now that you played with it, click play to go to the next level']
#	var dialog1 = dialogbox.instantiate()
#	add_child(dialog1)
	
	
		
func _process(delta):
	pass



func _on_add_power_pressed():
	var node = power.instantiate()
	$GraphEdit.add_child(node)


func _on_graph_edit_connection_request(from_node, from_port, to_node, to_port):
	for con in $GraphEdit.get_connection_list():
		if con.to == to_node and con.to_port == to_port:
			return
	$GraphEdit.connect_node(from_node, from_port, to_node, to_port)
	

func _on_graph_edit_disconnection_request(from_node, from_port, to_node, to_port):
	$GraphEdit.disconnect_node(from_node, from_port, to_node, to_port)


func _on_add_load_pressed():
	var node1 = new_load.instantiate()
	$GraphEdit.add_child(node1)



func _on_animate_pressed():
	var num =0
	timer.set_wait_time(1)
	timer.start()
	num += 1
	if num == 1:
		$GridContainer/animate.disabled = true
	
	

	
	
	
	#changing things here
	
	
func _on_try_again():
	# code the reloading part 
	print('try again!')



func _on_add_solar_pressed():
	var node1 = new_solar.instantiate()
	$GraphEdit.add_child(node1)


	
	
#func _on_node_2d_draw():
#
#	var lines = []
#	var points = []
#	var connection_list =$GraphEdit.get_connection_list()
#
#
#	var zoom = $GraphEdit.zoom
#	var scroll_offset = $GraphEdit.scroll_offset
#	var width = 10
#
#	for connecion in connection_list:
#
#		var from_node = $GraphEdit.get_node(str(connecion.from))
#
#		var to_node = $GraphEdit.get_node(str(connecion.to))
#
#		var line = $GraphEdit.get_connection_line(from_node.get_connection_output_position(connecion.from_port) + (from_node.position_offset)* zoom - scroll_offset, to_node.get_connection_input_position(connecion.to_port) + (to_node.position_offset)* zoom - scroll_offset)
#
#
#		lines.append(line)
#		points.append([from_node.get_connection_output_position(connecion.from_port) + (from_node.position_offset)* zoom - scroll_offset, to_node.get_connection_input_position(connecion.to_port) + (to_node.position_offset)* zoom - scroll_offset])
#
#	print(points)
#	for point in points:
#		var curve = Curve2D.new()
#		var x_diff = point[1][0] - point[0][0]
#		var cp_offset = x_diff * 3
#		if (x_diff < 0):
#			cp_offset *= -1
#		curve.add_point(point[0])
#		curve.set_point_out(0, Vector2(cp_offset,0))
#		curve.add_point(point[1])
#		curve.set_point_in(1,Vector2(-cp_offset,0))
#		print(point)
#		draw_polyline(curve.get_baked_points(), Color(1,1,1,1), 10)
#		draw_circle(curve.sample(0, 10), 5, Color(1,1,1,1))
#		print(point[1][0])
#





func _on_timer_timeout():
	Globals.DIALOG = ['Above are elements of a microgrid', 'What is a microgrid you ask? It is a local electrical grid that can be connected to a centralized grid or function independently.', 'In our case, the grid is operating independently', 'Two main components of the microgrid are the power plant and load', 'The power plant generates energy using resources, and loads use up that energy. An example of a load would be the houses we live in!']
	var dialog = dialog_scene.instantiate()
	$GraphEdit.add_child(dialog)
	# temporary solution to make the success pop up, need to figure out how  the game knows when the dialogue is done, then have the success scene pop up. 
	timer2.set_wait_time(15)
	timer2.start()
	



func _on_timer_2_timeout():
	var success = success_pop_up_scene.instantiate()
	add_child(success)
	pass # Replace with function body.
