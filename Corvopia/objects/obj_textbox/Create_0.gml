// Variáveis de inicialização

txtb_x = room_width/2;
txtb_y = room_height/1.2;


txtb_w = 300;
txtb_h = 96;
margin = 10;
setup = false;

// Text
text[0] = "";
page = 0;
page_number = 0;
text_id = ""

typist = scribble_typist();
typist.in(0.5, 0);
typist.character_delay_add(",",50);
typist.character_delay_add("!",50);
typist.character_delay_add("?",50);

txt_x = (txtb_x - (txtb_w/2));
txt_y = (txtb_y - (txtb_h/2));


// Portraits
portrait_name = [];
portrait_side = [];

sprite = spr_textbox;

// Options
option = [];
option_link_id = [];
option_pos = 999;
option_number = 0;

// Eventos
dialogue_event = ["", -1];

global.event_social_link = false;
global.event_open_door = false;
global.akira2 = false;
global.gotoschool = false;
global.gotohome = false;
global.gotofacul = false;
global.descer = false;
global.abrircela = false;
global.dungeonenter = false;
global.spd = false;
global.exithere = false;
global.init = false;
global.skipd = false;
global.parque = false;
global.vida = false;
global.endg = false;
global.force = false;
global.vidaj = false;
global.spdj = false;
global.spda = false;
global.forcej = false;
global.win = false;