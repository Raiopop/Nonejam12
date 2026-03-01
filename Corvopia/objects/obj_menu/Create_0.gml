// Variáveis de inicialização


global.key_revert =		ord("X");
global.menu_key_enter =		vk_enter;
global.menu_key_left	=		vk_left;
global.menu_key_right =		vk_right;
global.menu_key_up	=		vk_up;
global.menu_key_down	=		vk_down;

inputting = false;

enum MENU_PAGE {
	MAIN,
	SETTINGS,
	AUDIO,
	GRAPHICS,
	HEIGHT	
}

enum MENU_ELEMENT_TYPE {
	SCRIPT_RUNNER,
	PAGE_TRANSFER,
	SLIDER,
	SHIFT,
	TOGGLE,
	INPUT
}

// Páginas do menu
ds_menu_main = create_menu_page(
	["JOGAR",		MENU_ELEMENT_TYPE.SCRIPT_RUNNER,		resume_game],
	["CONFIGURAÇÕES",	MENU_ELEMENT_TYPE.PAGE_TRANSFER,		MENU_PAGE.SETTINGS],
	["CRÉDITOS",	MENU_ELEMENT_TYPE.SCRIPT_RUNNER,		credits],
	["SAIR",		MENU_ELEMENT_TYPE.SCRIPT_RUNNER,		exit_game],
);

ds_menu_settings = create_menu_page(
	["ÁUDIO",		MENU_ELEMENT_TYPE.PAGE_TRANSFER,		MENU_PAGE.AUDIO],
	["GRÁFICOS",	MENU_ELEMENT_TYPE.PAGE_TRANSFER,		MENU_PAGE.GRAPHICS],
	["VOLTAR",		MENU_ELEMENT_TYPE.PAGE_TRANSFER,		MENU_PAGE.MAIN],
);

ds_menu_audio = create_menu_page(
	["MASTER",		MENU_ELEMENT_TYPE.SLIDER,				change_master,	global.master, [0, 1]],
	["SONS",		MENU_ELEMENT_TYPE.SLIDER,				change_sound,	global.sound, [0, 1]],
	["MÚSICA",		MENU_ELEMENT_TYPE.SLIDER,				change_music,	global.music, [0, 1]],
	["VOLTAR",		MENU_ELEMENT_TYPE.PAGE_TRANSFER,		MENU_PAGE.SETTINGS],
);

ds_menu_graphics = create_menu_page(
	["RESOLUÇÃO",		MENU_ELEMENT_TYPE.SHIFT,				change_resolution,	global.resolution, ["1280x720", "640x360"]],
	["TELA CHEIA",		MENU_ELEMENT_TYPE.TOGGLE,				change_window_mode,	global.screen, ["JANELA", "CHEIA"]],
	["TREMOR DE TELA",	MENU_ELEMENT_TYPE.TOGGLE,			change_shake,		global.shake, ["SIM", "NÃO"]],
	["VOLTAR",			MENU_ELEMENT_TYPE.PAGE_TRANSFER,			MENU_PAGE.SETTINGS],
);

page = 0;
menu_pages = [
	ds_menu_main, ds_menu_settings, ds_menu_audio, ds_menu_graphics
];
menu_option = [];
var i = 0, _array_len = array_length(menu_pages);
repeat(_array_len){
	menu_option[i] = 0;
	i++;
}

alpha = 0;
camera = camera_create();

cam_dist = -200;
cam_fov = 90;
cam_asp = 1280 / 720;

cx = -230;
cy = 0;
audio_time = 10;
audio_timer = audio_time;
camera_view_x = 60;

camera_setup_3D = false;

random_menu = array_create(16,-1)

original_matrix_view = matrix_get(matrix_view);
original_matrix_proj = matrix_get(matrix_projection);