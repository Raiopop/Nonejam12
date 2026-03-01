if global.pause exit;

if (global.midTransition == false){
	if timer == 200 {
		image_xscale = 2;
		image_yscale = 2;	
	}
	image_xscale = lerp(image_xscale, 1, 0.15);
	image_yscale = lerp(image_yscale, 1, 0.15);
	image_angle = wave(-5,5,1,0);

	timer --;
}

if (timer <= 0){
	image_alpha -= 0.1;
	if (image_alpha <= 0){
		switch(image_index){
			case 0:
			instance_create_depth(x,y,layer,obj_crow_knife);
			break;
			
			case 1:
			instance_create_depth(x,y,layer,obj_kamicorvo);
			break;
			
			case 2:
			instance_create_depth(x,y,layer,obj_chef_crow);
			break;
		}
		instance_destroy();
	}
}