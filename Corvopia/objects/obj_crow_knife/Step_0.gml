if global.pause exit;

var _dir = point_direction(x,y,obj_player.x,obj_player.y);

hspd = lengthdir_x(1,_dir)+hspdk;
vspd = lengthdir_y(1,_dir)+vspdk;

if obj_player.x >= x image_xscale = 1;
if obj_player.x < x image_xscale = -1;


if (life <=0){
	repeat(8){
	var _p = instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),depth-10,obj_particle);
	}
	instance_destroy();
}