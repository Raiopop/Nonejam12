if global.day == 2 instance_destroy();
if global.day == 4 instance_destroy();
if global.day == 6 instance_destroy();
if global.day == 7 instance_destroy();
if global.day == 8 instance_destroy();

if (global.lisa > 3){
	instance_destroy();	
}


if (global.lisa == 0){
	state_run = INT_STATE.TALK;
	text_id = "lisa school cattalk";	
}

if (global.lisa == 1){
	state_run = INT_STATE.SL;
	text_id = "lisa school 1 - social link";	
}

if (global.lisa == 2){
	state_run = INT_STATE.SL;
	text_id = "lisa school 2 - social link";	
}

if (global.lisa == 3){
	state_run = INT_STATE.SL;
	text_id = "lisa school 3 - social link";	
}