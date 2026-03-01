var _dir = point_direction(x,y,other.x,other.y);

hspdk += lengthdir_x(-4,-_dir);
vspdk += lengthdir_y(4,-_dir);

repeat(5){
	var _p = instance_create_depth(x+random_range(-3,3),y+random_range(-3,3),depth-10,obj_particle);
}
audio_play_sound(pop,1,false,global.sound*global.master);
obj_screenshake.shake = 8;
flash = 1;
life -= global.player_dmg;
instance_destroy(other);