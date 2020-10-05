/// @description Insert description here
// You can write your code in this edito
global.ps1 = part_system_create();
part_type_size(global.ps1, 200, 300, .80, .6);
part_type_scale(global.ps1, 50, 100);
part_type_colour1(global.ps1, c_white);
part_type_speed(global.ps1, 5, 10, -0.6, 50);
part_type_direction(global.ps1, 0, 359, -1, 180);
p_emit1 = part_emitter_create(global.ps1);
part_emitter_region(global.ps1, p_emit1, x-300, x+300, y+300, y-300, ps_shape_diamond, ps_distr_gaussian);