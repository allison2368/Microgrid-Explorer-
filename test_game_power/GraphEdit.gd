extends GraphEdit

var lines = []
var points = []

func _ready():
	var lines = []
	var points = []
	for connecion in get_connection_list():
		var from_node = get_node(str(connecion.from))
		var to_node = get_node(str(connecion.to))
		var line = get_connection_line(from_node.get_connection_output_position(connecion.from_port) + (from_node.position_offset)* zoom - scroll_offset, to_node.get_connection_input_position(connecion.to_port) + (to_node.position_offset)* zoom - scroll_offset)
		lines.append(line)
		points.append([from_node.get_connection_output_position(connecion.from_port) + (from_node.position_offset)* zoom - scroll_offset, to_node.get_connection_input_position(connecion.to_port) + (to_node.position_offset)* zoom - scroll_offset])
	print(points)
	#$Node2D.lines = lines
	#$Node2D.points = points

func _draw():
	for point in points:
		var curve = Curve2D.new()
		var x_diff = point[1][0] - point[0][0]
		var lines_curvature= 10
		var width = 10
		var count = 10
		var maxCount = 10
		var cp_offset = x_diff * lines_curvature
		if (x_diff < 0):
			cp_offset *= -1
		curve.add_point(point[0])
		curve.set_point_out(0, Vector2(cp_offset,0))
		curve.add_point(point[1])
		curve.set_point_in(1,Vector2(-cp_offset,0))
		draw_polyline(curve.get_baked_points(), Color(1,1,1,1), width*zoom)
		draw_circle(curve.sample(0, count/maxCount), 5, Color(1,1,1,1))
