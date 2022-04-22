if creator == noone or creator == other or ds_list_find_index(hit_objects, other) != -1
{
	exit;
}

other.hp -= damage;
repeat(5)
{
	instance_create_layer(	other.x, other.y- 12, "Effects", o_hit_effect);
}


if instance_exists(o_domagoj)
{
		if creator.object_index == o_domagoj and other.hp <= 0
		{	
			o_domagoj.kills += 1;
		}
		if other.object_index == o_domagoj
		{
			if other.hp <= 0
			{
				ini_open("save.ini")
				ini_write_real("Scores", "Kills", other.kills);
				var highscore = ini_read_real("Scores","Highscore",0);
				if other.kills > highscore
				{
					ini_write_real("Scores","Highscore", other.kills);
				}
				ini_close();
			}
	}
	else 
	{
	other.alarm[0] = 120;
	}
}
ds_list_add(hit_objects, other);
show_debug_message(other.hp);
other.state ="knockback";
other.knockback_speed = knockback * image_xscale;