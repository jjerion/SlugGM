/// @description Insert description here
// You can write your code in this edito
global.ps1 = part_system_create();
part_type_size(global.ps1, 6, 11, .10, .1);
part_type_scale(global.ps1, 1, 1);
part_type_colour1(global.ps1, c_white);
part_type_speed(global.ps1, 5, 10, -0.20, 20);
part_type_direction(global.ps1, 0, 359, -1, 20);
p_emit1 = part_emitter_create(global.ps1);
part_emitter_region(global.ps1, p_emit1, x-50, x+50, y+50, y-50, ps_shape_diamond, ps_distr_gaussian);