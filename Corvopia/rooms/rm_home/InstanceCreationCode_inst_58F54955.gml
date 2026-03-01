if (global.daytime = "day"){
	state_run = INT_STATE.DIALOGUE;
	text_id = "exithome";
} else {
	instance_destroy();	
}