if global.pause exit;

if instance_exists(obj_player){
	if (distance_to_object(obj_player) > 15){
		image_index = 0;	
	}
	
	if (distance_to_object(obj_player) <= 15){
		image_index = 1;	
		if (global.key_interact) && !instance_exists(obj_textbox) && !global.midTransition{
			create_textbox(text_id);	
			obj_player.state_run = PLAYER_STATE.FROZEN;
		}
	}
}

