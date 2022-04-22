var camera_id = view_camera[0];
var view_width = camera_get_view_width(camera_id);
var view_height = camera_get_view_height(camera_id);
display_set_gui_size(view_width, view_height);


if not instance_exists(o_domagoj) exit;
draw_exprience = o_domagoj.exprience;
draw_max_exprience = o_domagoj.max_exprience;
