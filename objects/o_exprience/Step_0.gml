if not instance_exists(o_domagoj) exit;
var dir = point_direction(x,y ,o_domagoj.x, o_domagoj.y);
var accelaration = 0.25;
motion_add(dir, accelaration);

var max_speed = 4;
if speed > max_speed
{
	speed = max_speed;
}