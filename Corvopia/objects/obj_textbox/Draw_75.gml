if global.pause exit;

// ----- Textbox ----- //

// Setup
if (setup == false){
	setup = true;
	game_text(text_id);	
}


#region Background

// Resolução do background
display_set_gui_size(640, 360);

var _xscale = txtb_w /	sprite_get_width(sprite);
var _yscale = txtb_h /	sprite_get_height(sprite);

draw_sprite_ext(sprite, 0, txtb_x, txtb_y, _xscale, _yscale, 0, c_white, 1);

#endregion

#region Text
// Resolução do texto 
display_set_gui_size(1280, 720);

// Fonte
scribble_font_set_default("fnt_dialogue_default");

// Pular o texto / avançar a página
if keyboard_check_pressed(vk_space) && global.pause == false{
	if (typist.get_state() > 0 && typist.get_state() < 1){
		typist.skip();
	} else if (typist.get_state() == 1){
		
		if (global.event_open_door == true){
			inst_interactable_door.text_id = "door open";
			global.event_open_door = false;
		}
		
		if page < array_length(text)-1{	
			page ++;
		} else {
			if (option_number > 0){
				option_pos = clamp(option_pos, 0, option_number-1);
				create_textbox(option_link_id[option_pos]);
			}
			instance_destroy();	
		}
	}
}

var _r = 1280/640;

var _mg = 0;

if (portrait_name[page] != ""){
	
	if (portrait_name[page] == "Lisa"){

		_mg = 10;

		var _txt = scribble($"[c_black]{portrait_name[page]}[/c]");

		// Definições padrão
		_txt.wrap((txtb_w)*_r, (txtb_h)*_r);
		_txt.padding(margin*_r, margin*_r, margin*_r, margin*_r)
		_txt.draw((1 + txtb_x - string_length(portrait_name[page])*6)*_r, (1 +txt_y-8)*_r);
		
		typist.sound(sfx_dialogue, 20, 1, 2, global.sound*global.master);	
		var _txt = scribble($"[c_orange]{portrait_name[page]}[/c]");

		// Definições padrão
		_txt.wrap((txtb_w)*_r, (txtb_h)*_r);
		_txt.padding(margin*_r, margin*_r, margin*_r, margin*_r)
		_txt.draw((txtb_x - string_length(portrait_name[page])*6)*_r, (txt_y-8)*_r);
	}
	
	if (portrait_name[page] == "Aluno 1"){

		_mg = 10;

		var _txt = scribble($"[c_black]{portrait_name[page]}[/c]");

		// Definições padrão
		_txt.wrap((txtb_w)*_r, (txtb_h)*_r);
		_txt.padding(margin*_r, margin*_r, margin*_r, margin*_r)
		_txt.draw((1 + txtb_x - string_length(portrait_name[page])*6)*_r, (1 +txt_y-8)*_r);
		
		typist.sound(sfx_dialogue, 20, 0.8, 0.9, global.sound*global.master);	
		var _txt = scribble($"[c_aqua]{portrait_name[page]}[/c]");

		// Definições padrão
		_txt.wrap((txtb_w)*_r, (txtb_h)*_r);
		_txt.padding(margin*_r, margin*_r, margin*_r, margin*_r)
		_txt.draw((txtb_x - string_length(portrait_name[page])*6)*_r, (txt_y-8)*_r);
	}
	
	if (portrait_name[page] == "Aluno 2"){

		_mg = 10;

		var _txt = scribble($"[c_black]{portrait_name[page]}[/c]");

		// Definições padrão
		_txt.wrap((txtb_w)*_r, (txtb_h)*_r);
		_txt.padding(margin*_r, margin*_r, margin*_r, margin*_r)
		_txt.draw((1 + txtb_x - string_length(portrait_name[page])*6)*_r, (1 +txt_y-8)*_r);
		
		typist.sound(sfx_dialogue, 20, 0.9, 1, global.sound*global.master);	
		var _txt = scribble($"[c_red]{portrait_name[page]}[/c]");

		// Definições padrão
		_txt.wrap((txtb_w)*_r, (txtb_h)*_r);
		_txt.padding(margin*_r, margin*_r, margin*_r, margin*_r)
		_txt.draw((txtb_x - string_length(portrait_name[page])*6)*_r, (txt_y-8)*_r);
	}
	
	if (portrait_name[page] == "Corvet"){

		_mg = 10;

		var _txt = scribble($"[c_black]{portrait_name[page]}[/c]");

		// Definições padrão
		_txt.wrap((txtb_w)*_r, (txtb_h)*_r);
		_txt.padding(margin*_r, margin*_r, margin*_r, margin*_r)
		_txt.draw((1 + txtb_x - string_length(portrait_name[page])*6)*_r, (1 +txt_y-8)*_r);
		
		typist.sound(sfx_dialogue, 20, 0.9, 2, global.sound*global.master);	
		var _txt = scribble($"[c_aqua]{portrait_name[page]}[/c]");

		// Definições padrão
		_txt.wrap((txtb_w)*_r, (txtb_h)*_r);
		_txt.padding(margin*_r, margin*_r, margin*_r, margin*_r)
		_txt.draw((txtb_x - string_length(portrait_name[page])*6)*_r, (txt_y-8)*_r);
	}
	
	if (portrait_name[page] == "L"){
		typist.sound(sfx_dialogue, 20, 1, 2, global.sound*global.master);	

	}
	
	if (portrait_name[page] == "C"){
		typist.sound(sfx_dialogue, 20, 0.9, 2, global.sound*global.master);	

	}
	
} else {
	typist.sound(sfx_dialogue, 20, 0.8, 1, global.sound*global.master);	

}



// Desenhando o texto
var _txt = scribble(text[page]);

// Definições padrão
_txt.wrap((txtb_w)*_r, (txtb_h)*_r);
_txt.padding(margin*_r, (margin+_mg)*_r, margin*_r, (margin)*_r)
_txt.draw((txt_x)*_r, (txt_y)*_r, typist);

#endregion

// Opções
if ((option_number > 0) && (page == array_length(text)-1) && (typist.get_state() == 1)) && global.pause == false{
	
	option_pos += keyboard_check_pressed(ord("W")) - keyboard_check_pressed(ord("S"));
	option_pos = clamp(option_pos, 0, option_number-1);
	
	var _opt_w = 128;
	var _opt_h = 100;
	var _opt_x = txt_x;
	var _opt_y = txt_y- 48;
	

	
	for (var i = 0; i < option_number; ++i) {
		draw_set_alpha(0.9)
		draw_rectangle_colour((_opt_x)*_r, (_opt_y+5)*_r-(i*28*_r), (_opt_x+_opt_h+10)*_r, (_opt_y+30)*_r-(i*28*_r),c_black,c_black,c_black,c_black,false);
		draw_set_alpha(1)
	    var _opt = scribble(option[i]);
		// Definições padrão
		_opt.wrap((_opt_w)*_r, (_opt_h)*_r);
		_opt.padding(margin*_r, margin*_r, margin*_r, margin*_r)
		_opt.draw((_opt_x )*_r, (_opt_y)*_r-(i*28*_r));
		if (i == option_pos){
			_opt.blend(#e695f5);
		} else {
			_opt.blend(c_ltgray);	
		}
	}
}

#region Eventos

if (dialogue_event[1] == page){
	switch(dialogue_event[0]){
		
	case "debug":

	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	break;
	
	case "destroy":
	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	instance_destroy();
	break;
	
	case "social link":
	global.event_social_link = true;
	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	break;
	
	case "akira 2":
	global.event_open_door = true;
	global.akira2 = true;
	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	break;
	
	case "go to school":
	global.gotoschool = true;
	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	break
	
	case "go to home":
	global.gotohome = true;
	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	break;
	
	case "go to facul":
	global.gotofacul = true;
	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	break;
	
	case "descer":
	global.descer = true;
	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	break;
	
	case "parque":
	global.parque = true;
	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	break;
	
	case "skip day":
	global.skipd = true;
	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	break;
	
	case "init 2":
	global.init = true;
	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	break;
	
	case "vida":

	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	
	if global.vida == false {
	global.vida = true;
	global.player_mlife += 5;
	}
	 break; 
	 
	case "spd":

	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	
	if global.spd == false {
	global.spd = true;
	global.player_spd += 0.5;
	}
	
	break;
	
	case "força":

	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	
	if global.force == false {
	global.force = true;
	global.player_dmg += 1;
	}
	
	break;
	
	case "vidaj":

	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	
	if global.vidaj == false {
	global.vidaj = true;
	global.player_mlife += 2;
	}
	 break; 
	 
	case "spdj":

	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	
	if global.spdj == false {
	global.spdj = true;
	global.player_spd += 0.25;
	}
	
	break;
	
	case "spda":

	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	
	if global.spda == false {
	global.spda = true;
	global.player_spd += 0.25;
	}
	
	break;
	case "win":

	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	
	if global.win == false {
		global.win = true;
	}
	
	break;
	
	case "forçaj":

	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	
	if global.forcej == false {
	global.forcej = true;
	global.player_dmg += 0.5;
	}
	
	break;
	
	case "cela":
	global.abrircela = true;
	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	break;
	
	case "* Você e Corvit entraram":
	global.dungeonenter = true;
	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	break;
	
	case "end":
	global.endg = true;
	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	break;
	
	case "exit!":
	global.exithere = true;
	dialogue_event[0] = "";
	dialogue_event[1] = -1;
	break;
	
	}

	
	
}

#endregion