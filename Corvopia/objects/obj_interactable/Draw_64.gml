if (global.midTransition == true) || (global.pause){
	alpha = 0;
}
else {
	alpha = lerp(alpha, 1, 0.15);
}


display_set_gui_size(1280, 720);
	
var _r = 1280/640;

var _x = x*_r
var _y = y*_r

switch(state_run){

	case INT_STATE.SL:

	var _wx1 = wave(1, -2, 0.5);
	var _wx2 = wave(-1, -1, 0.25);
	var _wx3 = wave(-2, 1, 0.5);
	var _wx4 = wave(1, 4, 0.75);
		   
	var _wy1 = wave(1, 1, 0.5);
	var _wy2 = wave(-1, 4, 0.75);
	var _wy3 = wave(-1, -1, 0.25);
	var _wy4 = wave(2, -1, 0.5);

	var _xo1 = _x;
	var _yo1 = _y;

	var _xo2 = _x + 40 
	var _yo2 = _y 	
				
	var _xo3 = _x + 40
	var _yo3 = _y + 40
				
	var _xo4 = _x	
	var _yo4 = _y + 40

	var _o = 2;

	var _c1 = c_black;
	var _c2 = c_white;
	var _c3 = c_purple;

	if (image_index == 1){

		var _c1 = c_fuchsia;
		var _c2 = c_white;
		var _c3 = c_black;
	} 

	draw_primitive_begin(pr_trianglefan);

	draw_vertex_color(_wx1+_xo1+4*_r,		_wy1+_yo1+4, _c3, alpha);
	draw_vertex_color(_wx2+_xo2+4*_r ,		_wy2+_yo2+4, _c3, alpha);
	draw_vertex_color(_wx3+_xo3+4*_r,		_wy3+_yo3+4, _c3, alpha);
	draw_vertex_color(_wx4+_xo4+4*_r,		_wy4+_yo4+4, _c3, alpha);

	draw_primitive_end();

	draw_primitive_begin(pr_trianglefan);

	draw_vertex_color(_wx1+_xo1-_o,		_wy1+_yo1-_o, _c1, alpha);
	draw_vertex_color(_wx2+_xo2+_o ,	_wy2+_yo2-_o, _c1, alpha);
	draw_vertex_color(_wx3+_xo3+_o,		_wy3+_yo3+_o, _c1, alpha);
	draw_vertex_color(_wx4+_xo4-_o,		_wy4+_yo4+_o, _c1, alpha);

	draw_primitive_end();

	draw_primitive_begin(pr_trianglefan);

	draw_vertex_color(_wx1+_xo1,		_wy1+_yo1, _c2, alpha);
	draw_vertex_color(_wx2+_xo2 ,		_wy2+_yo2, _c2, alpha);
	draw_vertex_color(_wx3+_xo3,		_wy3+_yo3, _c2, alpha);
	draw_vertex_color(_wx4+_xo4,		_wy4+_yo4, _c2, alpha);

	draw_primitive_end();


	var _days = 7;
	scribble_font_set_default("fnt_dialogue_interact");
	scribble_anim_wave(1,0.25,0.225);


	if (image_index == 0){
		var _txt = scribble($"[wave][c_purple]![c_purple][wave]");	
	} else {
		var _txt = scribble($"[wave][c_fuchsia]![/c][wave]");	
	}
	_txt.blend(c_white,alpha)
	_txt.draw((_x+18), (_y+6));	
	

	break;
	
	
	case INT_STATE.TALK:

	var _wx1 = wave(1, -2, 0.5);
	var _wx2 = wave(-1, -1, 0.25);
	var _wx3 = wave(-2, 1, 0.5);
	var _wx4 = wave(1, 4, 0.75);
		   
	var _wy1 = wave(1, 1, 0.5);
	var _wy2 = wave(-1, 4, 0.75);
	var _wy3 = wave(-1, -1, 0.25);
	var _wy4 = wave(2, -1, 0.5);

	var _xo1 = _x;
	var _yo1 = _y;

	var _xo2 = _x + 40 
	var _yo2 = _y 	
				
	var _xo3 = _x + 40
	var _yo3 = _y + 40
				
	var _xo4 = _x	
	var _yo4 = _y + 40

	var _o = 2;

	var _c1 = c_black;
	var _c2 = c_white;
	var _c3 = c_purple;

	if (image_index == 1){
		var _c1 = c_fuchsia;
		var _c2 = c_white;
		var _c3 = c_black;
	} 

	draw_primitive_begin(pr_trianglefan);

	draw_vertex_color(_wx1+_xo1+4*_r,		_wy1+_yo1+4, _c3, alpha);
	draw_vertex_color(_wx2+_xo2+4*_r ,		_wy2+_yo2+4, _c3, alpha);
	draw_vertex_color(_wx3+_xo3+4*_r,		_wy3+_yo3+4, _c3, alpha);
	draw_vertex_color(_wx4+_xo4+4*_r,		_wy4+_yo4+4, _c3, alpha);

	draw_primitive_end();

	draw_primitive_begin(pr_trianglefan);

	draw_vertex_color(_wx1+_xo1-_o,		_wy1+_yo1-_o, _c1, alpha);
	draw_vertex_color(_wx2+_xo2+_o ,	_wy2+_yo2-_o, _c1, alpha);
	draw_vertex_color(_wx3+_xo3+_o,		_wy3+_yo3+_o, _c1, alpha);
	draw_vertex_color(_wx4+_xo4-_o,		_wy4+_yo4+_o, _c1, alpha);

	draw_primitive_end();

	draw_primitive_begin(pr_trianglefan);

	draw_vertex_color(_wx1+_xo1,		_wy1+_yo1, _c2, alpha);
	draw_vertex_color(_wx2+_xo2 ,		_wy2+_yo2, _c2, alpha);
	draw_vertex_color(_wx3+_xo3,		_wy3+_yo3, _c2, alpha);
	draw_vertex_color(_wx4+_xo4,		_wy4+_yo4, _c2, alpha);

	draw_primitive_end();

	var _days = 7;
	scribble_font_set_default("fnt_dialogue_interact");
	scribble_anim_wave(1,0.25,0.225);


	
	if image_index == 1 var _txt = scribble($"[wave][c_fuchsia]:)[c_fuchsia][wave]");	
	if image_index == 0 var _txt = scribble($"[wave][c_purple]:)[c_purple][wave]");	


	_txt.blend(c_white,alpha)
	_txt.draw((_x+14), (_y+6));


	break;
}

draw_set_alpha(1);