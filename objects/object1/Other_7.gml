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
}
	if state == "prvi napad"
	{
		state = "move";
		image_index = 0;
	}
	
switch (state)
{
	case "drugi napad":
	#region drugi napad state
	if image_xscale = 1
	{
		image_index = 0;
		state = "move";
		x = x +34;
	}
	if image_xscale = -1
	{
		image_index = 0;
		state = "move";
		x = x -34;
	}
	#endregion

}

switch (state)
{
	case "treci napad":
	#region drugi napad state
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

}
switch (state)
{
	case "dash":
	#region dash state
	if image_xscale = 1
	{
		image_index = 0;
		state = "move";
		x = x +59;
	}
	if image_xscale = -1
	{
		image_index = 0;
		state = "move";
		x = x -59;
	}
	#endregion
}

if state == "taunt"
	{
		state = "move";
		image_index = 0;
	}
	
if state == "prvi napad combo 1"
	{
		state = "move";
		image_index = 0;
	}