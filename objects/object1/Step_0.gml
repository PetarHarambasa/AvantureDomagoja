switch (state)
{
	// varijable
	case "move":
	#region Move State
	S = keyboard_check(ord("S"))
	Q = keyboard_check(ord("Q"))
	D = keyboard_check(ord("D"))
	A = keyboard_check(ord("A"))
	J = keyboard_check(ord("J"))
	K = keyboard_check(ord("K"))
	L = keyboard_check(ord("L"))
	spd = 2;
		 // hodanje u desno
	if (D) and not place_meeting(x + spd, y, o_wall)
	{
		x+= spd;
		image_xscale = 1;
		sprite_index = spr_Walk_strip;
	}
		// hodanje u lijevo
	if (A) and not place_meeting(x - spd, y, o_wall)
	{
		x-= spd;
		image_xscale = -1;
		sprite_index = spr_Walk_strip;
	}
	if not keyboard_check(ord("D")) and not keyboard_check(ord("A"))
	{
		sprite_index = spr_Idle;
	}
	
	if keyboard_check_pressed(vk_space) 
	{
		image_index = 0;
		state = "jump";
		
	}
	if (J)
	{
		image_index=0;
		state = "prvi napad";
	}
		if (K) and not place_meeting(x + spd,y,o_wall)
	{
		
		image_index=0;
		state = "drugi napad";
		x += spd
	}
	if (L)
	{
		image_index = 0;
		state = "treci napad";
	}
	if (S)
	{
		
		image_index = 0;
		state = "dash";
	}
	if (Q)
	{
		image_index = 0;
		state = "taunt";
	}
	#endregion
	break;
	

	case "jump":
	#region Jump State
	sprite_index = spr_Jump_strip;
	
	#endregion
	break;

	case "prvi napad":
	#region Prvi Napad State
	
	sprite_index = spr_Attack_strip;
	image_speed = 1;
	
	if (J)
	{
		image_index=0;
		state = "prvi napad combo 1";
	}
#endregion
	break;
	
	case "drugi napad":
	#region Drugi Napad State
	sprite_index = spr_SpinAttack_strip;
	image_speed = 1.25;
	#endregion
	break;
	
	case "treci napad":
	#region Treci Napad State	
	sprite_index = spr_Leap_strip;
	image_speed = 1;
	#endregion
	break;
	
	case "dash":
	#region Dash State
	sprite_index = spr_Dash_strip;
	#endregion
	break;
	
	case "taunt":
	#region Taunt Stane
	sprite_index = spr_Taunt_strip;
	#endregion
	break;
	
	case "prvi napad combo 1":
	#region prvi napad combo 1
	sprite_index = spr_Attack_strip2;
	#endregion
	break;
	
	case "prvi napad combo 2":
	#region prvi napad combo 2
	sprite_index = spr_Attack_strip3;
	#endregion
	break;
	
	
}



	


