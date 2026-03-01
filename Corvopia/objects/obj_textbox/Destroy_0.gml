if instance_exists(obj_player) && (room != rm_school_walk) && (room != rm_dungeon_arena)   {
	obj_player.state_run = PLAYER_STATE.IDLE;	
}

if (room == rm_dungeon_arena) obj_player.state_run = PLAYER_STATE.ARENA;

if (global.event_social_link == true){
	global.event_social_link = false;
	global.lisa ++;
}

if (global.akira2 == true){
	inst_red_hair.text_id = "Akira - 2";
	if !instance_exists(obj_countdown){
		instance_create_layer(9, 14, "Managers", obj_countdown);
		global.lisa ++;	
	}
	global.akira2 = false;

	global.event_open_door = true;
}

if (global.gotoschool == true) TransitionStart(rm_classroom, sq_circle_faculdade, sq_circle_out);
if (global.gotohome == true){
	if room == rm_parque global.lisa ++;	
	TransitionStart(rm_home, sq_circle_casa, sq_circle_out);
	global.daytime = "night";	
	global.gotoschool = false;
}
if (global.gotofacul == true){
	global.daytime = "day";	
	TransitionStart(rm_school_walk, sq_circle_morning, sq_circle_out);
	global.gotofacul = false;
}
if (global.win == true){
	TransitionStart(rm_end, sq_circle_gameover, sq_circle_out);
	global.win = false;
}
if (global.init == true){
	global.daytime = "day";	
	with(obj_game) TransitionStart(rm_home, sq_circle_amanhecer, sq_circle_out);
	global.init = false;
}

if (global.descer == true){
	if global.descerp == 0 {
		TransitionStart(rm_dungeon_start, sq_circle_descer1, sq_circle_out);
		global.descerp +=1;	
	} else {
		TransitionStart(rm_dungeon_start, sq_circle_descer2, sq_circle_out);
	}
	global.descer = false
}

if (global.parque == true){
	global.parque = false;
	TransitionStart(rm_parque, sq_circle_parque, sq_circle_out);
}

if (global.endg == true){
	global.endg = false;
	game_end();
}

if (global.exithere = true){
	if (global.day != 7){
		TransitionStart(rm_school_walk, sq_circle_morning, sq_circle_out);
	} else {
		if (global.keys == 3){
			TransitionStart(rm_dungeon_start, sq_circle_descer2, sq_circle_out);	
		} else {
			TransitionStart(rm_gameover, sq_circle_gameover, sq_circle_out);
		}
	}

}

if global.vidaj == true {
	global.vidaj = false
	TransitionStart(rm_school_walk, sq_circle_morning, sq_circle_out);
}

if global.forcej == true {
	global.forcej = false
	TransitionStart(rm_school_walk, sq_circle_morning, sq_circle_out);
}

if global.spdj == true {
	global.spdj = false
	TransitionStart(rm_school_walk, sq_circle_morning, sq_circle_out);
}

if global.spda == true {
	global.daytime = "night";	
	global.spdj = false
	TransitionStart(rm_home, sq_circle_casa, sq_circle_out);
}

if global.skipd == true {
	global.skipd = false;
	if (global.day != 7){
		TransitionStart(rm_school_walk, sq_circle_morning, sq_circle_out);
	} else {
		TransitionStart(rm_gameover, sq_circle_gameover, sq_circle_out);
	}
}
if (global.dungeonenter == true){
	
	TransitionStart(rm_dungeon_arena, sq_circle_arena, sq_circle_out);
	global.dungeonenter = false;
}

if (global.abrircela == true){
	global.abrircela = false;
	inst_gate.open = true;
	inst_c.text_id = "crow 8";
}