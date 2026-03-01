// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_menu_page(){
	var _arg, i = 0;
	repeat(argument_count){
		_arg[i] = argument[i];
		i++;
	}
	
	var _ds_grid_id = ds_grid_create(5, argument_count);
	i = 0; repeat(argument_count){
		var _array = _arg[i];
		var _array_len = array_length(_array);
		
		var _xx = 0; repeat(_array_len){
			_ds_grid_id[# _xx, i] = _array[_xx];
			_xx++;	
		}
		i++;
	}
	return _ds_grid_id;
}

function resume_game(){
	if room == rm_menu{
		TransitionStart(rm_init,sq_circle_gameover,sq_circle_out)
		audio_play_sound(sound,1,false,global.sound*global.master,0,0.9)
	} else {
		if global.pause == true global.pause = false;	
	}
	instance_destroy();
}

function credits(){
	if !instance_exists(obj_credits){
		instance_create_depth(x,y,depth-10,obj_credits)
		audio_play_sound(sound,1,false,global.sound*global.master,0,0.9)
	}
}

function exit_game(){
	game_end();
}

function change_master(){
	var _ds_grid = menu_pages[page];
	global.master = _ds_grid[# 3, menu_option[page]];
}

function change_sound(){
	var _ds_grid = menu_pages[page];
	global.sound = _ds_grid[# 3, menu_option[page]];
}

function change_music(){
	var _ds_grid = menu_pages[page];
	global.music = _ds_grid[# 3, menu_option[page]];
}

function change_difficulty(){

}

function change_resolution(){
	var _ds_grid = menu_pages[page];
	global.resolution = _ds_grid[# 3, menu_option[page]];
	if global.resolution == 0 window_set_size(1280,720)
	if global.resolution == 1 window_set_size(640,360)
	window_center();
}

function change_shake(){
	var _ds_grid = menu_pages[page];
	global.shake = _ds_grid[# 3, menu_option[page]];
}

function change_window_mode(){
	var _ds_grid = menu_pages[page];
	global.screen = _ds_grid[# 3, menu_option[page]];
	if global.screen == 0 window_set_fullscreen(true)
	if global.screen == 1 window_set_fullscreen(false)
}