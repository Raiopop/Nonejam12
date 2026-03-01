

input_up_p		=	keyboard_check_pressed(global.menu_key_up) || keyboard_check_pressed(ord("W"))
input_down_p	=	keyboard_check_pressed(global.menu_key_down) || keyboard_check_pressed(ord("S"))
input_enter_p	=	keyboard_check_pressed(global.menu_key_enter) || keyboard_check_pressed(vk_space)
var _ds_grid = menu_pages[page], _ds_height = ds_grid_height(_ds_grid);

var _ochange = input_down_p - input_up_p;



if (inputting){
	
		switch(_ds_grid[# 1, menu_option[page]]){
			case MENU_ELEMENT_TYPE.SHIFT:
			var _hinput = keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"))
			if _hinput != 0{
				//audio
				_ds_grid[# 3, menu_option[page]] += _hinput
				_ds_grid[# 3, menu_option[page]] = clamp(_ds_grid[# 3, menu_option[page]], 0,array_length(_ds_grid[# 4, menu_option[page]])-1);
			}
			show_debug_message(_hinput)
			break;
			case MENU_ELEMENT_TYPE.SLIDER:
			
			var _hinput = keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"))
			var _hinputp = keyboard_check(ord("D")) - keyboard_check(ord("A"))
			
			if _hinputp != 0 {
				audio_timer --;
			} else {
				audio_timer = audio_time;	
			}
			show_debug_message(audio_timer)
			if audio_timer <= 0 _hinput += _hinputp
			
			if (_hinput != 0) || (_hinputp != 0){

				_ds_grid[# 3, menu_option[page]] += _hinput*0.01;
				_ds_grid[# 3, menu_option[page]] = clamp(_ds_grid[# 3, menu_option[page]], 0,1);
				script_execute(_ds_grid[# 2, menu_option[page]], _ds_grid[# 3, menu_option[page]])
			}
			break;
			case MENU_ELEMENT_TYPE.TOGGLE:
			var _hinput = keyboard_check_pressed(ord("D")) - keyboard_check_pressed(ord("A"))
			
			if _hinput != 0{
				//audio
				_ds_grid[# 3, menu_option[page]] += _hinput
				_ds_grid[# 3, menu_option[page]] = clamp(_ds_grid[# 3, menu_option[page]], 0,1);
			}
			break;
			
		}
	
} else {
	if (_ochange != 0){
		menu_option[page] += _ochange;
		if (menu_option[page] < 0) menu_option[page] = _ds_height-1;
		if (menu_option[page] > _ds_height-1) menu_option[page] = 0;
	}
}

if (input_enter_p){
	switch(_ds_grid[# 1, menu_option[page]]){
		case MENU_ELEMENT_TYPE.SCRIPT_RUNNER: script_execute(_ds_grid[# 2, menu_option[page]]) break;
		case MENU_ELEMENT_TYPE.PAGE_TRANSFER: 
		page = _ds_grid[# 2, menu_option[page]]; 
		camera_setup_3D = false;
		audio_play_sound(sound,1,false,global.sound*global.master,0,0.9)
		break;	
		case MENU_ELEMENT_TYPE.SHIFT:
		case MENU_ELEMENT_TYPE.SLIDER:
		case MENU_ELEMENT_TYPE.TOGGLE: if (inputting){script_execute(_ds_grid[# 2, menu_option[page]], _ds_grid[# 3, menu_option[page]])}

		inputting = !inputting
		break;
	}
}

//if keyboard_check(ord("W"))	cy -=5;
//if keyboard_check(ord("A"))	cx -=5;
//if keyboard_check(ord("D"))	cx +=5;
//if keyboard_check(ord("S"))	cy +=5;

//if keyboard_check(ord("F"))	cam_dist +=5;
//if keyboard_check(ord("G"))	cam_dist -=5;



switch(menu_pages[page]){
	
	case ds_menu_main:

	cam_dist = lerp(cam_dist, -180, 0.15);
	cam_fov = lerp(cam_fov, 90, 0.15);
	cx = lerp(cx, -230, 0.15);
	cy = lerp(cy, 0, 0.15);
	camera_view_x = lerp(camera_view_x, 60, 0.15);
	
	break;
	
	case ds_menu_settings:
	if (camera_setup_3D == false){
		camera_setup_3D = true;	
		cam_dist = -200
		camera_view_x = 80;
	}
	cam_dist = lerp(cam_dist, -220, 0.15);
	cam_fov = lerp(cam_fov, 90, 0.15);
	cx = lerp(cx, -100, 0.15);
	cy = lerp(cy, 0, 0.15);
	camera_view_x = lerp(camera_view_x, 60, 0.15);
	
	break;
	
	default:		
	
	cam_dist = lerp(cam_dist, -200, 0.15);
	cam_fov = lerp(cam_fov, 90, 0.15);
	cx = lerp(cx, 0, 0.15);
	cy = lerp(cy, 0, 0.15);
	camera_view_x = lerp(camera_view_x, 250, 0.15);
	
	break;
	
}

if room != rm_menu {
	if global.pause = false instance_destroy();	
}