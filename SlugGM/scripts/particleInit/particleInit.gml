// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
gml_pragma("global", "particleInit()");

#region Particle Types

//basic particle
var _p = part_type_create();

part_type_shape(_p, pt_shape_smoke);
part_type_life(_p, 20, 40);

part_type_alpha2(_p, 1, 0);

global.ptBasic = _p;

#endregion


