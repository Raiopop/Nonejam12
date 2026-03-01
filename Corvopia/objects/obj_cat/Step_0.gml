if (global.daytime = "day"){
	sprite_index = spr_cat_sleep 
	image_yscale = wave(1, 0.9, 2, 0);
}

if (global.daytime = "night"){
	sprite_index = spr_hole;
}
