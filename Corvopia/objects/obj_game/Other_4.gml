if (room == rm_debug_main) TransitionStart(rm_menu,sq_circle_gameover_1,sq_circle_out)

if (room == rm_init) create_textbox_cutscene("init")
if (room == rm_gameover) create_textbox_cutscene("end")


if room == rm_dungeon_arena global.player_life = global.player_mlife

