if global.daytime == "day"{
	text_id = "nosleep";	
	state_run = INT_STATE.DIALOGUE;
}
if global.daytime == "night"{
	text_id = "yessleep";	
	state_run = INT_STATE.SL;
}