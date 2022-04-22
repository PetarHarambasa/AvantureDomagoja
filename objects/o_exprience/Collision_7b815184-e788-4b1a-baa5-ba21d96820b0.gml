if not instance_exists(other) exit;
with (other)
{
	exprience += 1;
	if (exprience >= max_exprience)
	{
		level += 1;
		exprience = exprience - max_exprience;
		max_exprience += max_exprience;
		max_hp += 5;
		hp = max_hp;
		strenght += 5;
	}
}
instance_destroy();
	