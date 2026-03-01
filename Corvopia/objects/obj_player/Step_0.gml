if global.pause exit;

if (instance_exists(obj_textbox) && (room != rm_school_walk)) state_run = PLAYER_STATE.FROZEN;
if (room == rm_school_walk) state_run = PLAYER_STATE.WALKING_CUTSCENE;

spd = global.player_spd;

switch(state_run){
	
	case PLAYER_STATE.ARENA:
	alpha = 1;
	dash_cooldown --;
	
	if dash_cooldown <=0 && keyboard_check_pressed(vk_shift) {
		if (global.key_right - global.key_left) !=0 or (global.key_down - global.key_up) != 0
		{
		d_dir = point_direction(0,0,(global.key_right - global.key_left),(global.key_down - global.key_up))
		} else
		{
		d_dir = point_direction(0,0,sign(see),(global.key_down - global.key_up))
		}
		state_run = PLAYER_STATE.DASH
	}
	
	normal_movement();
	//normal_attack();
	//normal_roll();
	
	break;
	
	case PLAYER_STATE.RECOVER:
	alpha = wave(0.5,0.75,0.5);
	recover --;
	
	if recover <=0 {
		state_run = PLAYER_STATE.ARENA;
		recover = 100;
	}
	
	normal_movement();

	break;
	
	case PLAYER_STATE.DASH:
	alpha = 0.5;
	dash_timer --;

	
	hspd = lengthdir_x(7,d_dir) 
	vspd = lengthdir_y(7,d_dir) 
	
	if dash_timer <= 0{
		dash_timer = dash_time
		state_run = PLAYER_STATE.ARENA
	}
	
	break;
	
	case PLAYER_STATE.IDLE:
	
	normal_movement();
	//normal_attack();
	//normal_roll();
	
	break;
	
	case PLAYER_STATE.ATTACK:
	
	if animation_end(sprite_index, image_index){
		state_run = PLAYER_STATE.IDLE;
	}

	hspd = lerp(hspd, 0, 0.15);
	vspd = lerp(vspd, 0, 0.15);

	break;
	
	case PLAYER_STATE.ROLL:
	
	if animation_end(sprite_index, image_index){
		state_run = PLAYER_STATE.IDLE;
	}

	normal_attack();

	hspd = lerp(hspd, 0, 0.15);
	vspd = lerp(vspd, 0, 0.15);

	break;
	
	case PLAYER_STATE.FROZEN:
	
	hspd = 0;
	vspd = 0;

	break;
	
	case PLAYER_STATE.WALKING_CUTSCENE:
	
	hspd = 0;
	vspd = 0;
	
	sprite_index = spr_player_run_right;
	
	break;
}

if global.player_life <=0 {
	
	instance_create_depth(x,y,depth-5,obj_player_death)

} 