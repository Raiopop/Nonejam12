if instance_exists(obj_credits) exit;

var _r = 2;

display_set_gui_size(1280, 720);

draw_set_colour(c_black)
draw_set_alpha(alpha)
if (menu_pages[page] != ds_menu_main) || (room != rm_menu){
	if room != rm_menu {
		alpha = lerp(alpha, 0.75, 0.15);
	}
	if room == rm_menu alpha = lerp(alpha, 0.5, 0.15);
	draw_rectangle(0,0,1280,720,false)
	if room != rm_menu draw_sprite(spr_title,0,980,20);
	
} else {
	alpha = lerp(alpha, 0, 0.15);
}

draw_set_alpha(1)
draw_set_colour(c_white)


var _camW = 1280;
var _camH = 720;
var _camX =  camera_view_x + camera_get_view_x(camera) + _camW / 2;
var _camY = camera_get_view_y(camera) + _camH / 2;

var _viewMat = matrix_build_lookat(_camX+cx, _camY+cy, cam_dist, _camX, _camY, 0, 0, 1, 0);
var _projMat = matrix_build_projection_perspective_fov(cam_fov, cam_asp, 3, 3000);

camera_set_view_mat(camera, _viewMat);
camera_set_proj_mat(camera, _projMat);

camera_apply(camera);

var _gw = 1280, _gh = 720;
var _ds_grid = menu_pages[page], _ds_height = ds_grid_height(_ds_grid);
var _y_buffer = 32*_r, _x_buffer = 96*_r;
var _start_y = (_gh/2) - ((((_ds_height-1)/2) * _y_buffer)), _start_x = (_gw/2);

draw_set_font(fnt_menu);

// Elementos da esquerda
draw_set_halign(fa_left);
draw_set_valign(fa_middle);



var _ltx = _start_x - _x_buffer, _lty;

var _yy = 0; repeat(_ds_height){
	
	if random_menu[_yy] == -1 {random_menu[_yy] = random_range(0,15)}
	
	_lty = _start_y + (_yy*_y_buffer);
	
	var c = c_white;
	if (_yy == menu_option[page]){
		c = c_fuchsia	
	}
	
	var _len = string_width(_ds_grid[# 0, _yy]) + 5
	var _h = string_height(_ds_grid[# 0, _yy])
	
	var _wx1 = wave(1, -2, 0.5,random_menu[_yy]);
	var _wx2 = wave(-1, -1, 0.25,random_menu[_yy]);
	var _wx3 = wave(-2, 1, 0.5,random_menu[_yy]);
	var _wx4 = wave(1, 4, 0.75,random_menu[_yy]);
		   
	var _wy1 = wave(1, 1, 0.5,random_menu[_yy]);
	var _wy2 = wave(-1, 4, 0.75,random_menu[_yy]);
	var _wy3 = wave(-1, -1, 0.25,random_menu[_yy]);
	var _wy4 = wave(2, -1, 0.5,random_menu[_yy]);

	var _xo1 = _ltx-5;
	var _yo1 = _lty-30;

	var _xo2 = _ltx-5 + _len 
	var _yo2 = _lty-30 	
				
	var _xo3 = _ltx-5 + _len 
	var _yo3 = _h + _lty-30
				
	var _xo4 = _ltx-5	
	var _yo4 = _h + _lty-30

	var _o = 2;

	var _c1 = c_white;
	var _c2 = c_black;
	var _c3 = c_purple;

	if (_yy == menu_option[page]){
		c = c_fuchsia	
		_c2 = c_white;
	}


	draw_primitive_begin(pr_trianglefan);

	draw_vertex_color(_wx1+_xo1+4*_r,		_wy1+_yo1+4, _c3, 1);
	draw_vertex_color(_wx2+_xo2+4*_r ,		_wy2+_yo2+4, _c3, 1);
	draw_vertex_color(_wx3+_xo3+4*_r,		_wy3+_yo3+4, _c3, 1);
	draw_vertex_color(_wx4+_xo4+4*_r,		_wy4+_yo4+4, _c3, 1);

	draw_primitive_end();

	draw_primitive_begin(pr_trianglefan);

	draw_vertex_color(_wx1+_xo1-_o,		_wy1+_yo1-_o, _c1, 1);
	draw_vertex_color(_wx2+_xo2+_o ,	_wy2+_yo2-_o, _c1, 1);
	draw_vertex_color(_wx3+_xo3+_o,		_wy3+_yo3+_o, _c1, 1);
	draw_vertex_color(_wx4+_xo4-_o,		_wy4+_yo4+_o, _c1, 1);

	draw_primitive_end();

	draw_primitive_begin(pr_trianglefan);

	draw_vertex_color(_wx1+_xo1,		_wy1+_yo1, _c2, 1);
	draw_vertex_color(_wx2+_xo2 ,		_wy2+_yo2, _c2, 1);
	draw_vertex_color(_wx3+_xo3,		_wy3+_yo3, _c2, 1);
	draw_vertex_color(_wx4+_xo4,		_wy4+_yo4, _c2, 1);

	draw_primitive_end();

	draw_text_color(_ltx, _lty, _ds_grid[# 0, _yy],c,c,c,c,1);
	_yy++;	
}

// Elementos da direita
draw_set_halign(fa_left);
var _rtx = _start_x + _x_buffer, _rty

var _yy = 0; repeat(_ds_height){
	
	_rty = _start_y + (_yy*_y_buffer)
	
	switch(_ds_grid[# 1, _yy]){
		case MENU_ELEMENT_TYPE.SHIFT:	
		
		var _current_val = _ds_grid[# 3, _yy];
		var _current_array = _ds_grid[# 4, _yy];
		var _left_shift = "<< "
		var _right_shift = " >>"
		var _margin = 64;
		
		if (_current_val == 0) _left_shift = "";
		if (_current_val == array_length(_ds_grid[# 4, _yy])-1) _right_shift = "";
		
		c = c_white;
		
		if inputting && _yy == menu_option[page] c = c_yellow;
		draw_text_colour(_rtx+_margin, _rty, _left_shift+_current_array[_current_val]+_right_shift, c, c, c, c, 1);
		
		break;
		
		case MENU_ELEMENT_TYPE.SLIDER:	
		
		var _len = 128;
		var _margin = 128;
		var _current_val = _ds_grid[# 3, _yy];
		var _current_array = _ds_grid[# 4, _yy];
		var _circle_pos = ((_current_val - _current_array[0]) / (_current_array[1] - _current_array[0]));
		
		c = c_white;
		if inputting && _yy == menu_option[page] c = c_yellow;
		draw_line_width_colour(_rtx-_margin, _rty, _rtx+_len-_margin, _rty, 8,c,c);
		draw_circle_color(_rtx+(_circle_pos*_len)-_margin, _rty, 16, c, c, false);
		
		draw_text_colour(_rtx+(_len + 140)-_margin, _rty, string(floor(_circle_pos*100))+"%", c, c, c, c, 1);
		
		break;
		
		case MENU_ELEMENT_TYPE.TOGGLE:	
		var _margin = 64;
		var _current_val = _ds_grid[# 3, _yy];
		var _c1, _c2;
		var c = c_white
		if inputting && _yy == menu_option[page] c = c_yellow;
		if (_current_val == 0)		{_c1 = c; _c2 = c_dkgray;}
		else						{_c1 = c_dkgray; _c2 = c;}
		
		draw_text_colour(_rtx+_margin, _rty, "SIM", _c1, _c1, _c1, _c1, 1)
		draw_text_colour(_rtx+_margin+80, _rty, "NÃO", _c2, _c2, _c2, _c2, 1)
		
		break;
		
		case MENU_ELEMENT_TYPE.INPUT:	

		var _current_val = _ds_grid[# 3, _yy];
		var _string_val;
		
		switch(_current_val){
			case vk_up:			_string_val = "UP KEY"; break;
			case vk_left:		_string_val = "LEFT KEY"; break;
			case vk_right:		_string_val = "RIGHT KEY"; break;
			case vk_down:		_string_val = "DOWN KEY"; break;
			default:			_string_val	= chr(_current_val); break;
		}
		
		c = c_white;
		if inputting && _yy == menu_option[page] c = c_yellow;
		draw_text_colour(_rtx, _rty, _string_val, c, c, c, c, 1);
		
		break;
	}
	_yy++;	
}


camera_set_view_mat(camera, original_matrix_view);
camera_set_proj_mat(camera, original_matrix_proj);

camera_apply(view_camera[0]);

display_set_gui_size(640, 360);
