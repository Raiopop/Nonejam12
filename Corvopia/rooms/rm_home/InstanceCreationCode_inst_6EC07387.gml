if (global.daytime != "day"){
	state_run = INT_STATE.SL;
	text_id = "omni cura";
} else {
	state_run = INT_STATE.DIALOGUE;
	text_id = "no pc";
}