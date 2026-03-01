// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function portrait_text(_portrait, _side){
	switch(_portrait){
		case "Lisa":
		
		portrait_name[page_number] = _portrait;
		portrait_side[page_number] = _side;
		
		break;
		
		case "":	
		
		portrait_name[page_number] = "";
		portrait_side[page_number] = -1;
		
		break;
	}
}

function dialogue_text(_text, _portrait="", _side=1){
	
	portrait_name[page_number] = _portrait;
	
	text[page_number] = _text;
	page_number ++;
}

function dialogue_option(_option, _link_id){
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number ++;
}

function create_textbox(_text_id){
	
	var _txtb_x = room_width/2;
	var _txtb_y = room_height/1.2;

	var _txtb = instance_create_layer(_txtb_x, _txtb_y, layer, obj_textbox);
	_txtb.txtb_x = _txtb_x;
	_txtb.txtb_y = _txtb_y;
	
	_txtb.text_id = _text_id;
}

function create_textbox_cutscene(_text_id){
	
	var _txtb_x = room_width/2;
	var _txtb_y = room_height/2;

	var _txtb = instance_create_layer(_txtb_x, _txtb_y, layer, obj_textbox);
	_txtb.txtb_x = _txtb_x;
	_txtb.txtb_y = _txtb_y;
	
	_txtb.text_id = _text_id;
}