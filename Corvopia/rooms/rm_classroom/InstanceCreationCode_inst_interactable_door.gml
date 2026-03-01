if global.day == 0 {
	state_run = INT_STATE.DIALOGUE;
	text_id = "door closed";
} else {
	state_run = INT_STATE.DIALOGUE;
	text_id = "door open";
}