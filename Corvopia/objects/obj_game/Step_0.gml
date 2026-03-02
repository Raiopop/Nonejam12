game_keys();

if tuts == false && room == rm_home && global.day == 0 && global.daytime == "day" && global.midTransition == false {
	create_textbox("tuts")
	tuts = true;
}

show_debug_message(global.day)

if room == rm_school_walk || room == rm_menu{
	audio_sound_gain(sd_cricket, 0,50);	
	audio_sound_gain(sd_battle, 0,50);
	if !audio_is_playing(sd_day){
		audio_play_sound(sd_day,1,true,global.music*global.master*0.125,0);
	}
	audio_sound_gain(sd_day, global.music*global.master,100);	
}

if room == rm_home {
	audio_sound_gain(sd_day, 0,200);
	if !audio_is_playing(sd_cricket){
		audio_play_sound(sd_cricket,1,true,global.music*global.master,0);
	}
	audio_sound_gain(sd_cricket, global.music*global.master,100);	
}

if room == rm_parque {
	audio_sound_gain(sd_day, 0,200);	
}

if room == rm_dungeon_start {
	audio_sound_gain(sd_cricket, 0,50);
	audio_sound_gain(sd_battle, 0,100);
}

if room == rm_dungeon_arena {
	if !audio_is_playing(sd_battle){
		audio_play_sound(sd_battle,1,true,global.music*global.master*0.5,0);
	}
	audio_sound_gain(sd_battle, global.music*global.master*0.5,50);
}


if room == rm_init {
	audio_sound_gain(sd_day, 0,200);
}

if room == rm_end {
	audio_sound_gain(sd_battle, 0,50);
}

if room == rm_gameover {
	audio_sound_gain(sd_battle, 0,50);
	audio_sound_gain(sd_cricket, 0,50);
}