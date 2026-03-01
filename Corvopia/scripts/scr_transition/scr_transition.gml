global.roomTarget = -1;
global.midTransition = false;
global.startTransition = false;
global.endTransition = false;
global.seq = -12;

//Called whenever you want to go from one room to another, using any combination of in/out sequences
function TransitionStart(_roomTarget, _typeIn, _typeOut)
{
	if (!global.midTransition)
	{
		global.startTransition = true;
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		TransitionPlaceSequence(_typeIn);
		layer_set_target_room(_roomTarget)
		TransitionPlaceSequence(_typeOut);
		layer_reset_target_room();
		return true;
	}
	else return false
}

//Places the sequences in the room
function TransitionPlaceSequence(_type)
{
	if (layer_exists("transition")) layer_destroy("transition")
	var _lay = layer_create(-9998,"transition")
	var _x = 0;
	var _y = 0;
	
	global.seq = layer_sequence_create(_lay,_x,_y,_type);	
}

//Called as a moment at the end of an "Out" transition sequence
function TransitionChangeRoom()
{
	room_goto(global.roomTarget);
	global.endTransition = true;
	global.startTransition = false;
}

function TransitionChangeSpeed()
{
	layer_sequence_speedscale(global.seq, global.transition_speed);	
}

//Called as a moment at the end of an "In" transition sequence
function TransitionFinished()
{
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
	global.endTransition = false;
}