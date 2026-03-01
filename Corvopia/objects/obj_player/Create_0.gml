// Velocidades e movimentação
hspd = 0;
vspd = 0;
hspd_max = 0;
vspd_max = 0;

spd = global.player_spd;
acel = 0.3;

movement_magnitude = 0;
movement_direction = 270;
step = 0;
dash_timer = 10;
dash_time = dash_timer;
dash_cooldownm = 100;
dash_cooldown = 0;

recover = 100;
d_dir = 0;

// Draw
sprite_direction = 270;
xscale = 1;
yscale = 1;
alpha = 1;
angle = 0;
shadow = 0;
dungeon = false;
see = 1;

enum PLAYER_STATE {
	
	IDLE,
	ROLL,
	ATTACK,
	FROZEN,
	WALKING_CUTSCENE,
	ARENA,
	RECOVER,
	DASH
}

state_run = PLAYER_STATE.IDLE;

normal_movement = function(){

	movement_magnitude = ((global.key_right - global.key_left != 0) || (global.key_down - global.key_up != 0));
	movement_direction = point_direction(0, 0, (global.key_right - global.key_left), (global.key_down - global.key_up));
	
	hspd_max = lengthdir_x(movement_magnitude * spd, movement_direction);
	vspd_max = lengthdir_y(movement_magnitude * spd, movement_direction);

	hspd = lerp(hspd,hspd_max,acel);
	vspd = lerp(vspd,vspd_max,acel);
	
	if (movement_magnitude > 0){
		sprite_direction = movement_direction;
		step ++;
		
		if step mod 20 == 0 audio_play_sound(sd_walk, 1,false,global.sound*global.master*0.25,0,random_range(1,1.2));	
	} else {
		step = 0;	
	}
}

normal_attack = function(){


	
	if (global.key_attack){
		
		var _dir = point_direction(x, (obj_player.bbox_top+obj_player.bbox_bottom)/2, mouse_x, mouse_y);
		
		if ((_dir >= -22.5) &&	(_dir < 22.5))	sprite_direction = 0;
		if ((_dir >= 22.5)	&&	(_dir < 67.5))	sprite_direction = 45;
		if ((_dir >= 67.5)	&&	(_dir < 112.5))	sprite_direction = 90;
		if ((_dir >= 112.5) &&	(_dir < 157.5))	sprite_direction = 135;
		if ((_dir >= 157.5) &&	(_dir < 202.5))	sprite_direction = 180;
		if ((_dir >= 202.5) &&	(_dir < 247.5))	sprite_direction = 225;
		if ((_dir >= 247.5) &&	(_dir < 292.5))	sprite_direction = 270;
		if ((_dir >= 292.5) &&	(_dir < 337.5))	sprite_direction = 315;
		
		hspd += lengthdir_x(5, sprite_direction);
		vspd += lengthdir_y(5, sprite_direction);
	
		image_index = 0;
		state_run = PLAYER_STATE.ATTACK;
	}
}

normal_roll = function(){
	
	if (global.key_roll){
		
		hspd += lengthdir_x(10, sprite_direction);
		vspd += lengthdir_y(10, sprite_direction);
	
		image_index = 0;
		state_run = PLAYER_STATE.ROLL;
	}
}

