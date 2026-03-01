if (room == rm_classroom){
	state_run = PLAYER_STATE.IDLE;
	shadow = 0;	
}

if (room == rm_school_walk){
	state_run = PLAYER_STATE.WALKING_CUTSCENE;
	shadow = 1;	
}

if (room == rm_home){
	state_run = PLAYER_STATE.IDLE;
	shadow = 2;	
}

if ((room == rm_dungeon_start) || (room == rm_dungeon_arena)){
	state_run = PLAYER_STATE.IDLE;
	shadow = 2;	
}

if (room == rm_dungeon_arena) state_run = PLAYER_STATE.ARENA;