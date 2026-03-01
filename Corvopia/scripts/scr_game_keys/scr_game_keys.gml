// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_keys(){
	// Keys
	global.key_right =		keyboard_check(ord("D"))	|| keyboard_check(vk_right);
	global.key_left =		keyboard_check(ord("A"))	|| keyboard_check(vk_left);
	global.key_up =			keyboard_check(ord("W"))	|| keyboard_check(vk_up);
	global.key_down =		keyboard_check(ord("S"))	|| keyboard_check(vk_down);
	global.key_attack =		mouse_check_button_pressed(mb_left); 
	global.key_roll =		keyboard_check_pressed(vk_shift)
	global.key_interact =	keyboard_check(ord("E"))	|| keyboard_check(ord("Z")) || keyboard_check_pressed(vk_space);; 
}