

depth = -y

if (state_run == PLAYER_STATE.IDLE){
	if (movement_magnitude == 0){
		
		switch(sprite_direction){
	
			case 0:		sprite_index	= spr_player_idle_right;	break;
			case 45:	sprite_index	= spr_player_idle_back;		break;
			case 90:	sprite_index	= spr_player_idle_back;		break;
			case 135:	sprite_index	= spr_player_idle_back;		break;
			case 180:	sprite_index	= spr_player_idle_left;		break;
			case 225:	sprite_index	= spr_player_idle_front;	break;
			case 270:	sprite_index	= spr_player_idle_front;	break;
			case 315:	sprite_index	= spr_player_idle_front;	break;
		}
	} else {
		switch(sprite_direction){
	
			case 0:		sprite_index	= spr_player_run_right;	break;
			case 45:	sprite_index	= spr_player_run_back;	break;
			case 90:	sprite_index	= spr_player_run_back;	break;
			case 135:	sprite_index	= spr_player_run_back;	break;
			case 180:	sprite_index	= spr_player_run_left;	break;
			case 225:	sprite_index	= spr_player_run_front;	break;
			case 270:	sprite_index	= spr_player_run_front;	break;
			case 315:	sprite_index	= spr_player_run_front;	break;
	
		}
	}
}


if (state_run == PLAYER_STATE.ARENA){
	if mouse_x >= room_width/2 see = 1;
	if mouse_x < room_width/2 see = -1;
	if (movement_magnitude == 0){
	
		sprite_index = spr_player_idle_gun;
		
	} else {
		sprite_index = spr_player_run_gun;
	}
}

if (state_run == PLAYER_STATE.DASH){
	if mouse_x >= room_width/2 see = 1;
	if mouse_x < room_width/2 see = -1;
	sprite_index = spr_player_billie_jean
}

if (state_run == PLAYER_STATE.ATTACK){

	switch(sprite_direction){
	
			case 0:		sprite_index	= spr_player_attack_right;	break;
			case 45:	sprite_index	= spr_player_attack_back;	break;
			case 90:	sprite_index	= spr_player_attack_back;	break;
			case 135:	sprite_index	= spr_player_attack_back;	break;
			case 180:	sprite_index	= spr_player_attack_left;	break;
			case 225:	sprite_index	= spr_player_attack_front;	break;
			case 270:	sprite_index	= spr_player_attack_front;	break;
			case 315:	sprite_index	= spr_player_attack_front;	break;
	}
}

if (state_run == PLAYER_STATE.ROLL){

	switch(sprite_direction){
	
			case 0:		sprite_index	= spr_player_roll_right;	break;
			case 45:	sprite_index	= spr_player_roll_back;		break;
			case 90:	sprite_index	= spr_player_roll_back;		break;
			case 135:	sprite_index	= spr_player_roll_back;		break;
			case 180:	sprite_index	= spr_player_roll_left;		break;
			case 225:	sprite_index	= spr_player_roll_front;	break;
			case 270:	sprite_index	= spr_player_roll_front;	break;
			case 315:	sprite_index	= spr_player_roll_front;	break;
	}
}

if (state_run == PLAYER_STATE.FROZEN){
	switch(sprite_direction){
	
		case 0:		sprite_index	= spr_player_idle_right;	break;
		case 45:	sprite_index	= spr_player_idle_back;		break;
		case 90:	sprite_index	= spr_player_idle_back;		break;
		case 135:	sprite_index	= spr_player_idle_back;		break;
		case 180:	sprite_index	= spr_player_idle_left;		break;
		case 225:	sprite_index	= spr_player_idle_front;	break;
		case 270:	sprite_index	= spr_player_idle_front;	break;
		case 315:	sprite_index	= spr_player_idle_front;	break;
	}	
}

draw_sprite_ext(spr_player_shadow, shadow, x, y, xscale, yscale, angle, image_blend, alpha);
draw_sprite_ext(sprite_index, image_index, x, y, xscale*see, yscale, angle, image_blend, alpha);