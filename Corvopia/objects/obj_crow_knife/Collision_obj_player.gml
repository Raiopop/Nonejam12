if (obj_player.state_run != PLAYER_STATE.RECOVER) && (obj_player.state_run != PLAYER_STATE.DASH) {

	other.state_run = PLAYER_STATE.RECOVER;	
	obj_screenshake.shake = 15;
		sleep(50);
	global.player_life -= 1;
} else {
	var _dir = point_direction(x,y,other.x,other.y);

	hspdk += lengthdir_x(2,-_dir);
	vspdk += lengthdir_y(2,-_dir);	
}

