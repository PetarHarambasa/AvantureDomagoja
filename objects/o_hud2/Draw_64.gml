var exp_x = 8;
var exp_y = 195;
var exp_width =330;
var exp_height = 2;

if instance_exists(o_domagoj)
{
	draw_exprience = lerp(draw_exprience, o_domagoj.exprience, 0.7);
	draw_max_exprience =  o_domagoj.max_exprience;
}
else
{
	draw_exprience = lerp(draw_exprience, 0, 0.5);
}
var exp_percent = draw_exprience / draw_max_exprience;
draw_rectangle_color(exp_x, exp_y, exp_x + (exp_width * exp_percent), exp_y + exp_height, c_yellow, c_yellow, c_yellow, c_yellow, false);
draw_line_width_color(exp_x-1, exp_y-1, exp_x + exp_width, exp_y-1, 0.5, c_black, c_black);
draw_line_width_color(exp_x-1, exp_y + exp_height, exp_x + exp_width, exp_y + exp_height, 0.5, c_black, c_black);
draw_line_width_color(exp_x-1, exp_y-1, exp_x -1 , exp_y + exp_height, 0.4, c_black, c_black);
draw_line_width_color(exp_x + exp_width, exp_y -1 , exp_x + exp_width, exp_y + exp_height, 0.4, c_black, c_black);