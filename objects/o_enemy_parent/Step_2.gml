if hp <= 0
{
	instance_destroy();
	
	repeat(exprience)
	{
		
		instance_create_layer(x+random_range(-6,6), y+random_range(-6,6), "Effects", o_exprience);
	}
}