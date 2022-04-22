switch (state)
{
	case "chase":
	#region Chase State
		set_state_sprite(spr_Skeleton_Walk,0);
		if not instance_exists(o_domagoj) break;
		image_xscale = sign(o_domagoj.x - x);
		if image_xscale == 0
		{
			image_xscale = 1;
		}
		
		var direction_facing = image_xscale;
		var distance_to_player = point_distance(x,y,o_domagoj.x, o_domagoj.y);
		if distance_to_player <= attack_range  
		{
			state = "attack";
		}
		else 
		{
			move_and_collide(direction_facing * chase_speed, 0);
		}
		#endregion
		break;
	
	case "attack":
		#region  Attack State
		set_state_sprite(spr_Skeleton_Attack,0);
		
		if animation_hit_frame(7)
		{
			create_hitbox(x,y, self, spr_skeleton_attack_dmg, 4,4,3, image_xscale);
		}
		#endregion
		break;
	
	case "knockback":
	#region KnockBack State
		knockback_state(spr_Skeleto_Hit, "chase");
	#endregion
	break;
	
	default:
		show_debug_message("State "+state+" does not not exsits");
		state = "chase";
		break;
}

