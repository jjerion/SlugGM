/// @description Insert description here
// You can write your code in this edito
/*global.ps1 = part_system_create();
part_type_size(global.ps1, 200, 300, 200, 12);
part_type_scale(global.ps1, 100, 200);
part_type_colour1(global.ps1, c_white);
part_type_speed(global.ps1, 5, 10, -0.6, 50);
part_type_direction(global.ps1, 0, 359, -1, 180);
part_type_blend(global.ps1, true);
part_type_alpha2(global.ps1, .5, 1);
p_emit1 = part_emitter_create(global.ps1);
part_emitter_region(global.ps1, p_emit1, x-400, x+400, y+700, y-700, ps_shape_diamond, ps_distr_gaussian);
*/

/// @description Initialise Particles

global.P_System = part_system_create_layer("particles", false);	//Create the system and give it a name...
global.Particle1 = part_type_create();									//Create the particle and give it a name...

//Define the particle...
part_type_shape(global.Particle1, pt_shape_pixel);		//This defines the particles shape...
part_type_size(global.Particle1, 2, 2, .1, 2);			//This is for the size...
part_type_scale(global.Particle1, 1, 2);				//This is for scaling...
part_type_color1(global.Particle1, c_blue);			//This sets its colour. There are three different codes for this...
part_type_alpha1(global.Particle1, 1);					//This is its alpha. There are three different codes for this...
part_type_speed(global.Particle1, 0.50, 2, -0.10, 0);	//The particles speed...
part_type_direction(global.Particle1, 0, 359, 0, 20);	//The direction...
part_type_orientation(global.Particle1, 0, 0, 0, 0, 1);	//This changes the rotation of the particle...
part_type_blend(global.Particle1, 1);					//This is the blend mode, either additive or normal...
part_type_life(global.Particle1, 1, 20);				//This is its lifespan in steps...

//Create emitters and name them...
global.Particle1_Emitter1 = part_emitter_create(global.P_System);  //This will be the static emitter that streams


//Define emitter properties...
part_emitter_region(global.P_System, global.Particle1_Emitter1, 0, room_width, 0, room_height, ps_shape_rectangle, ps_distr_linear);


//Use an emitter to stream particles...
part_emitter_stream(global.P_System, global.Particle1_Emitter1, global.Particle1, 1700);

//Set alarm to burst particles...
alarm[0] = 30;