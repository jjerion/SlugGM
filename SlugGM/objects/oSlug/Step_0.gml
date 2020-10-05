/// inputs
// You can write your code in this editor
if(mouse_check_button(mb_left)){
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}

if(mouse_check_button_released(mb_left)){
	xvel = cos(degtorad(image_angle)) * slugspeed;
	yvel = -sin(degtorad(image_angle)) * slugspeed;

}

x += xvel;
y += yvel;

if(abs(xvel) > 0){
	xvel -= sign(xvel) * min(slugdrag, abs(xvel));
}

if(abs(yvel) > 0){
	yvel -= sign(yvel) * min(slugdrag, abs(yvel));
}