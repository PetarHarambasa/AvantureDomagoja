var enemy_count = instance_number(o_enemy_parent);

if instance_exists(o_domagoj) and enemy_count < o_domagoj.kills / 4 
{
	if enemy_count > 10
	{
		exit;
	}
	var enemy = choose(o_skeleton, o_minotaur, o_skeleton);
	
	var new_x = random_range(220, room_width - 220);
	while point_distance(new_x, 0, o_domagoj.x, 0) < 200
	{
		new_x = random_range(220, room_width - 220);
	}
	
	instance_create_layer(new_x, o_domagoj.y, "Instances", enemy);
}
