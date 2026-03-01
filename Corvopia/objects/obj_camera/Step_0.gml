cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);

switch(mode){
	
	case CAMMODE.NORMAL:

	
	break;
	
	case CAMMODE.FOLLOW_OBJ:
	
	cx = (following.x - view_w/2);
	cy = (following.y - view_h/2);
	
	break;
}

camera_set_view_pos(view_camera[0], cx, cy);