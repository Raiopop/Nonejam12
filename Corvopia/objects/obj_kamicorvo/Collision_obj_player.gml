if (obj_player.state_run != PLAYER_STATE.RECOVER) && (obj_player.state_run != PLAYER_STATE.DASH) {

	other.state_run = PLAYER_STATE.RECOVER;	
	obj_screenshake.shake = 25;
	global.player_life -= 5;
	sleep(150);
	repeat(15){
		var _p = instance_create_depth(x+random_range(-6,6),y+random_range(-6,6),depth-10,obj_particle);
	}
	
	instance_destroy();

} else {
	var _dir = point_direction(x,y,other.x,other.y);

	hspdk += lengthdir_x(2,-_dir);
	vspdk += lengthdir_y(2,-_dir);	
}

