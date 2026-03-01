if room != rm_dungeon_arena instance_destroy();

timer = 100;
image_xscale = obj_player.see;
if room == rm_dungeon_arena room_goto(rm_dungeon_death);
obj_screenshake.shake = 20;
audio_play_sound(sd_mola,1,false,global.sound*global.master);