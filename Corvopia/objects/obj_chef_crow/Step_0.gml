if global.pause exit;

var _dir = point_direction(x,y,obj_player.x,obj_player.y);

hspd = hspdk;
vspd = vspdk;


if (life <=0){
	repeat(8){
	var _p = instance_create_depth(x+random_range(-5,5),y+random_range(-5,5),depth-10,obj_particle);
	}
	instance_destroy();
}

switch(state_run){
	case "idle":
	cook_timer --;

	if obj_player.x >= x image_xscale = 1;
	if obj_player.x < x image_xscale = -1;

	
	if cook_timer <= 0{
		state_run = "cook";
		image_index = 1;
	}

	break;
	
	case "cook":
	
	timer --;
	
	if timer <= 0 {
		
		var _bullet = instance_create_depth(x+5*image_xscale,y,depth-1,obj_carrot);
		_bullet.direction = point_direction(x,y,obj_player.x,obj_player.y);
		_bullet.image_angle = _bullet.direction;
		_bullet.speed = 6;
		_bullet.image_xscale = 0.25;
		_bullet.image_yscale = 0.25;
		cook_timer = cook_time;
		timer = 30;
		image_index = 0;
		state_run = "idle";
	}
	
	break;
}