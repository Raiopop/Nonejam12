display_set_gui_size(1280, 720);

var _r = 1280/640;

var _x = x*_r
var _y = y*_r

var _wx1 = wave(2, -4, 0.5);
var _wx2 = wave(-2, -2, 0.25);
var _wx3 = wave(-4, 2, 0.5);
var _wx4 = wave(2, 8, 0.75);
		   
var _wy1 = wave(2, 2, 0.5);
var _wy2 = wave(-2, 8, 0.75);
var _wy3 = wave(-2, -2, 0.25);
var _wy4 = wave(4, -2, 0.5);

var _xo1 = _x;
var _yo1 = _y;

var _xo2 = _x + 125 *_r
var _yo2 = _y 

var _xo3 = _x + 125 *_r
var _yo3 = _y + 30 *_r

var _xo4 = _x
var _yo4 = _y + 30 *_r

var _o = 5;

draw_primitive_begin(pr_trianglefan);

draw_vertex_color(_wx1+_xo1+5*_r,		_wy1+_yo1+10, c_purple, 1);
draw_vertex_color(_wx2+_xo2+5*_r ,		_wy2+_yo2+10, c_purple, 1);
draw_vertex_color(_wx3+_xo3+5*_r,		_wy3+_yo3+10, c_purple, 1);
draw_vertex_color(_wx4+_xo4+5*_r,		_wy4+_yo4+10, c_purple, 1);

draw_primitive_end();

draw_primitive_begin(pr_trianglefan);

draw_vertex_color(_wx1+_xo1-_o,		_wy1+_yo1-_o, c_black, 1);
draw_vertex_color(_wx2+_xo2+_o ,	_wy2+_yo2-_o, c_black, 1);
draw_vertex_color(_wx3+_xo3+_o,		_wy3+_yo3+_o, c_black, 1);
draw_vertex_color(_wx4+_xo4-_o,		_wy4+_yo4+_o, c_black, 1);

draw_primitive_end();

draw_primitive_begin(pr_trianglefan);

draw_vertex_color(_wx1+_xo1,		_wy1+_yo1, c_white, 1);
draw_vertex_color(_wx2+_xo2 ,		_wy2+_yo2, c_white, 1);
draw_vertex_color(_wx3+_xo3,		_wy3+_yo3, c_white, 1);
draw_vertex_color(_wx4+_xo4,		_wy4+_yo4, c_white, 1);

draw_primitive_end();


var _days = 7;
scribble_font_set_default("fnt_dialogue_countdown");
scribble_anim_wave(1,0.25,0.225);
var _txt = scribble($"[wave][c_black]DIAS RESTANTES: [c_purple]{_days-global.day}[c_purple][wave]");

_txt.draw((_x+23), (_y+20));

