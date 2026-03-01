
if room == rm_menu && !global.midTransition{
	scribble_font_set_default("fnt_dialogue_default");
	display_set_gui_size(1280, 720)
	var _txt = scribble("Um jogo feito para a NoNeJam 12 em 9 dias - WASD e Espaço");
	_txt.draw((580), (680));	
}