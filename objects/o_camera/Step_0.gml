if not instance_exists(o_domagoj) exit;

x = lerp(x, o_domagoj.x + o_domagoj.image_xscale * 24, 0.3);
y = lerp(y,o_domagoj.y - 60, 0.3);

camera_set_view_pos(view_camera[0],x - width/2, y- height/2);