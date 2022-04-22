var camera_id = view_camera[0];
var view_width = camera_get_view_width(camera_id);
var view_height = camera_get_view_height(camera_id);
display_set_gui_size(view_width, view_height);


if not instance_exists(o_domagoj) exit;
draw_hp = o_domagoj.hp;
draw_max_hp = o_domagoj.max_hp;
draw_set_font(f_one);

audio_play_sound(Onepunch_Man___The_Hero_FULL__8bit_mix_, 5 ,true);