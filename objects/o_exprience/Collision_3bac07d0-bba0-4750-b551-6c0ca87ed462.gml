if not instance_exists(other) exit;
var dir = point_direction(other.x,other.y, x, y);
var accelaration = 0.5;
motion_add(dir, accelaration);