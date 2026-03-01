
display_set_gui_size(1280, 720);
show_debug_message(display_get_gui_width())
draw_set_colour(c_black)
draw_rectangle(0,0,1280,720,false)
draw_set_colour(c_white)

scribble_font_set_default("fnt_credits")

var _txt = scribble("CRÉDITOS");

draw_set_halign(fa_center);

_txt.draw((640- (string_width("CRÉDITOS")/4)), (50));

draw_set_halign(fa_left);
var _txt = scribble("* Programação:		Oak");
_txt.draw((240- (string_width("* Programação:		Oak")/4)), (100));
var _txt = scribble("* Arte:					Oak");
_txt.draw((240- (string_width("* Programação:		Oak")/4)), (150));
var _txt = scribble("* Música durante o Dia/Menu:");
_txt.draw((240- (string_width("* Programação:		Oak")/4)), (200));
var _txt = scribble("This project contains music created by David McKee (ViRiX) soundcloud.com/virix");
_txt.draw((240- (string_width("* Programação:		Oak")/4)), (250));

var _txt = scribble("* Música durante a Noite:");
_txt.draw((240- (string_width("* Programação:		Oak")/4)), (300));
var _txt = scribble("syncopika");
_txt.draw((240- (string_width("* Programação:		Oak")/4)), (350));

var _txt = scribble("* Música durante a Batalha:");
_txt.draw((240- (string_width("* Programação:		Oak")/4)), (400));
var _txt = scribble("controllerhead");
_txt.draw((240- (string_width("* Programação:		Oak")/4)), (450));

var _txt = scribble("* Efeitos sonoros:");
_txt.draw((240- (string_width("* Programação:		Oak")/4)), (500));
var _txt = scribble("Mixkit - Pixabay");
_txt.draw((240- (string_width("* Programação:		Oak")/4)), (550));

var _txt = scribble("* Fonte:		Arial Narrow 7");
_txt.draw((240- (string_width("* Programação:		Oak")/4)), (600));



var _txt = scribble("[c_gray]esc para sair[/c]");
_txt.draw((1000 - (string_width("esc para sair")/4)), (600));
