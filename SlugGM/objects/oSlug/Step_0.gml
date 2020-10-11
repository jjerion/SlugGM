/// inputs
// You can write your code in this editor

if(mouse_check_button(mb_left)){
	image_angle = point_direction(x, y, mouse_x, mouse_y);
	
	sprite_index = sSlugContract;
	if(image_index >= 2) {
		image_speed = 0;
		}

}

if(mouse_check_button_released(mb_left)){
	xvel = cos(degtorad(image_angle)) * slugspeed;
	yvel = -sin(degtorad(image_angle)) * slugspeed;
	

	sprite_index = sSlugRelease;
	if(image_index >= 2){
		image_speed = 0;
	}

}

x += xvel;
y += yvel;

if(abs(xvel) > 0){
	xvel -= sign(xvel) * min(slugdrag, abs(xvel));
}

if(abs(yvel) > 0){
	yvel -= sign(yvel) * min(slugdrag, abs(yvel));
}