timer --;

if timer <= 0 image_alpha -= 0.01;

if image_alpha == 0{
	TransitionStart(rm_dungeon_start,sq_circle_descer2,sq_circle_out)
	global.player_life = global.player_mlife;
}