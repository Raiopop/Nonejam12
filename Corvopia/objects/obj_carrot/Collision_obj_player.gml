if (obj_player.state_run != PLAYER_STATE.RECOVER) && (obj_player.state_run != PLAYER_STATE.DASH) {

	other.state_run = PLAYER_STATE.RECOVER;	
	obj_screenshake.shake = 15;
	global.player_life -= 5;
	sleep(100);
	instance_destroy();
}