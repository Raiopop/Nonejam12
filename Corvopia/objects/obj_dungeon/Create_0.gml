waves_max = 10;
wave_atual = 1;

spawn_time = 50;
spawn_timer = spawn_time;

if global.dungeon_level = 1 waves_max = 9;
if global.dungeon_level = 2 waves_max = 13;
if global.dungeon_level = 3 waves_max = 17;

val = 0;