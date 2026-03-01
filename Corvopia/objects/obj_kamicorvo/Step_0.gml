if global.pause exit;

var _dir = point_direction(x,y,obj_player.x,obj_player.y);

hspd = hdash+hspdk;
vspd = vdash+vspdk;


if (life <=0){
	repeat(8){
	var _p = instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),depth-10,obj_particle);
	}
	instance_destroy();
}

switch(state_run){
	case "idle":
	dash_timer --;
	direction = point_direction(x,y,obj_player.x,obj_player.y);
	image_angle = point_direction(x,y,obj_player.x,obj_player.y);
	if dash_timer <= 50 {
		image_blend = c_red;
		image_speed = 2;
	}

	if (image_angle >= 90 && image_angle < 270){
		image_yscale = -1;
		if obj_player.x >= x image_xscale = -1;
		if obj_player.x < x image_xscale = 1;
	} else {
		if obj_player.x >= x image_xscale = 1;
		if obj_player.x < x image_xscale = -1;
		image_yscale = 1;
	}
	if dash_timer <= 0{
		state_run = "dash";
		hdash = lengthdir_x(10,point_direction(x,y,obj_player.x,obj_player.y));
		vdash = lengthdir_y(10,point_direction(x,y,obj_player.x,obj_player.y));
	}

	break;
	
	case "dash":
	image_blend = c_white;
	
	
	break;
}