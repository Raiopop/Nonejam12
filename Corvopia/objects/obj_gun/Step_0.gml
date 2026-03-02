if global.pause exit;

depth = obj_player.depth - 2;

if (obj_player.see == 1){
	x = obj_player.x+10;
	y = obj_player.y-20;
}

if (obj_player.see == -1){
	x = obj_player.x-10;
	y = obj_player.y-20;
}


image_angle = (point_direction(x,y,mouse_x,mouse_y));

if (image_angle >= 90 && image_angle < 270){
	image_yscale = -1;
	
} else {

	image_yscale = 1;
}



delay -= (global.player_spd/2);

delay = clamp(delay,0,999);

if mouse_check_button(mb_left) && delay <=0{
	delay = 20;
	var _bullet = instance_create_depth(x+5*obj_player.see,y,depth-1,obj_bullet);
	_bullet.direction = image_angle;
	_bullet.image_angle = image_angle;
	_bullet.speed = 6;
	_bullet.image_xscale = 0.25;
	_bullet.image_yscale = 0.25;
	obj_player.hspd -= lengthdir_x(1,-_bullet.direction);
	obj_player.vspd += lengthdir_y(1,-_bullet.direction);
	repeat(5){
		var _p = instance_create_depth(_bullet.x+random_range(-3,3),_bullet.y+random_range(-3,3),depth-10,obj_particle);
	}
}
