draw_self();

if alarm[0] > 0
{
	var height = sprite_height;
	draw_rectangle_color(x-12, y-height, x-12+(hp/max_hp)*24, y-(height-2), c_red, c_red, c_red,c_red , false);
	draw_sprite(spr_enemy_hbar, 0, x-12, y-height);
}
