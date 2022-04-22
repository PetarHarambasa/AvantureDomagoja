switch (state)
{
	// varijable
	case "move":
	#region Move State
	spd = 2;
	// hodanje u desno
	if input.right
	{
		move_and_collide(spd,0);
		image_xscale = 1;
		set_state_sprite(spr_Walk_strip,0);
	}
	// hodanje u lijevo
	if input.left
	{
		move_and_collide(-spd,0)
		image_xscale = -1;
		set_state_sprite(spr_Walk_strip,0);
	}
	if not input.right and not input.left
	{
		set_state_sprite(spr_Idle,0);
	}
	
	if input.jump
	{
		image_index = 0;
		state = "jump";
	}
	
	if input.prvi_napad
	{
		image_index =0;
		state = "prvi napad";
	}

	if input.drugi_napad
	{
		image_index=0;
		state = "drugi napad";
	}
	if input.treci_napad
	{
		image_index = 0;
		state = "treci napad";
	}
	if input.dash
	{
		image_index = 0;
		state = "dash";
	}
	if input.taunt
	{
		image_index = 0;
		state = "taunt";
	}	
	#endregion
	break;
	
	case "jump":
	#region Jump State
	set_state_sprite(spr_Jump_strip,0);
	if animation_hit_frame(12)
	{
		create_hitbox(x, y, self, spr_jump_dmg,4,4,20,image_xscale);
	}
	#endregion
	break;

	case "prvi napad":
	#region Prvi Napad State
	
	set_state_sprite(spr_Attack_strip,0);
	
	if animation_hit_frame(8)
	{
		create_hitbox(x, y, self, spr_napad_one_damage,2,4,5,image_xscale);
	}
	
	if input.prvi_napad and Kombinacije_Udaraca(8,11)
	{
		state = "prvi napad combo 1";
	}

	#endregion
	break;
	
	case "prvi napad combo 1":
	#region Prvi Napad Combo 1
	if sprite_index != spr_Attack2_strip
	{
		set_state_sprite(spr_Attack2_strip,0);
	}
	if animation_hit_frame(5)
	{ 
		create_hitbox(x, y, self, spr_napad_two_damage,2,4,7,image_xscale);
	}
	if input.prvi_napad and Kombinacije_Udaraca(7,10)
	{
		state = "prvi napad combo 2";
	}
	#endregion
	break;
	
	case "prvi napad combo 2":
	#region Prvi Napad Combo 2
	if sprite_index != spr_Attack3_strip
	{
		set_state_sprite(spr_Attack3_strip,0);
	}
	if animation_hit_frame(5)
	{ 
		create_hitbox(x, y, self, spr_napad_three_damage,4,4,10,image_xscale);
	}
	#endregion
	break;
	
	case "drugi napad":
	#region Drugi Napad State
	set_state_sprite(spr_SpinAttack_strip,0);
	if animation_hit_frame(12)
	{ 
		create_hitbox(x, y, self, spr_spin_dmg,2,4,3,image_xscale);
	}
	if animation_hit_frame(13)
	{ 
		create_hitbox(x, y, self, spr_spin_dmg,2,4,3,image_xscale);
	}
	if animation_hit_frame(14)
	{ 
		create_hitbox(x, y, self, spr_spin_dmg,2,4,3,image_xscale);
	}
	if animation_hit_frame(15)
	{ 
		create_hitbox(x, y, self, spr_spin_dmg,2,4,3, image_xscale);
	}
	if animation_hit_frame(16)
	{ 
		create_hitbox(x, y, self, spr_spin_dmg,2,4,3,image_xscale);
	}
	if animation_hit_frame(17)
	{ 
		create_hitbox(x, y, self, spr_spin_dmg,2,4,3,image_xscale);
	}
	if animation_hit_frame(18)
	{ 
		create_hitbox(x, y, self, spr_spin_dmg,2,4,3,image_xscale);
	}
	if animation_hit_frame(19)
	{ 
		create_hitbox(x, y, self, spr_spin_dmg,2,4,3,image_xscale);
	}
	if animation_hit_frame(20)
	{ 
		create_hitbox(x, y, self, spr_spin_dmg,2,4,3,image_xscale);
	}
	if animation_hit_frame(21)
	{ 
		create_hitbox(x, y, self, spr_spin_dmg,2,4,3,image_xscale);
	}
	if animation_hit_frame(22)
	{ 
		create_hitbox(x, y, self, spr_spin_dmg,2,4,3,image_xscale);
	}
	if animation_hit_frame(23)
	{ 
		create_hitbox(x, y, self, spr_spin_dmg,2,4,3,image_xscale);
	}
	if animation_hit_frame(24)
	{ 
		create_hitbox(x, y, self, spr_spin_dmg,2,4,3,image_xscale);
	}
	if animation_hit_frame(25)
	{ 
		create_hitbox(x, y, self, spr_spin_dmg,2,4,3,image_xscale);
	}
	#endregion
	break;
	
	case "treci napad":
	#region Treci Napad State	
	
	set_state_sprite(spr_Leap_strip,0);
	image_speed = 1;
	if animation_hit_frame(20)
	{ 
		create_hitbox(x, y, self, spr_leap_dmg_one,2,4,10,image_xscale);
	}
	if animation_hit_frame(28)
	{ 
		create_hitbox(x, y, self, spr_leap_dmg_two,5,4,15,image_xscale);
	}
	
	#endregion
	break;
	
	case "dash":
	#region Dash State
	set_state_sprite(spr_Dash_strip,0);
	#endregion
	break;
	
	case "taunt":
	#region Taunt State
	set_state_sprite(spr_Taunt_strip,0);
	#endregion
	break;
	
	case "knockback":
	#region Knockback State
		knockback_state(spr_domagoj_hit, "move");
	#endregion
	break;
	
	case "smrt":
	#region Smrt State
	set_state_sprite(spr_domagoj_umre, 0);
	#endregion
	break;
	
	default:
		show_debug_message("State "+state+" does not not exsits");
		state = "move";
	break;
}



	


