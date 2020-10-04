/// inputs
// You can write your code in this editor
if(mouse_check_button(mb_left)){
	phy_rotation = point_direction(x, -y, mouse_x, -mouse_y) - 90;
}

if(mouse_check_button_released(mb_left)){
	physics_apply_local_impulse(0, 20, 0, 50);
}