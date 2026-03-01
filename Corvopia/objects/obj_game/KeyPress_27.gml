

if instance_exists(obj_credits){
	instance_destroy(obj_credits)
} else {
	if (room != rm_menu && room != rm_init && room != rm_gameover && room != rm_dungeon_death) {
		global.pause = !global.pause	
	}

	if global.pause == true && !instance_exists(obj_menu) instance_create_layer(x,y,layer,obj_menu);
}