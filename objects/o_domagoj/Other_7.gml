switch (state)
{
	case "jump":
	#region Jumb State
	if image_xscale = 1
	{
		image_index = 0;
		state = "move";
		x = x +92;
	}
	if image_xscale = -1
	{
		image_index = 0;
		state = "move";
		x = x -92;
	}
	#endregion
	break;
	
	case "prvi napad":
	#region Napad State
	{
		state = "move";
		image_index =0;
	}
	#endregion
	break;
	
	case "drugi napad":
	#region Drugi Napad State
	if image_xscale == 1
	{
		image_index = 0;
		state = "move";
		x = x +34;
	}
	if image_xscale == -1
	{
		image_index = 0;
		state = "move";
		x = x -34;
	}
	#endregion
	break;

	case "treci napad":
	#region Treci Napad State
	if image_xscale = 1
	{
		image_index = 0;
		state = "move";
		x = x +109;
	}
	if image_xscale = -1 
	{
		image_index = 0;
		state = "move";
		x = x -109;
	}
	#endregion
	break;

	case "dash":
	#region Dash State
	if image_xscale == 1
	{
		image_index = 0;
		state = "move";
		x = x +59;
	}
	if image_xscale == -1
	{
		image_index = 0;
		state = "move";
		x = x -59;
	}
	#endregion
	break;
	
	case "taunt":
	#region Taunt State
	{
		state = "move";
		image_index = 0;
	}
	#endregion
	break;
	
	case "prvi napad combo 1":
	#region Napad Combo 1 State 
	{
		image_index =0;
		state = "move";
	}
	#endregion
	break;
	
	case "prvi napad combo 2":
	#region Napad Combo 2 State 
	{
		image_index =0;
		state = "move";
	}
	#endregion
	break;
	
}

	