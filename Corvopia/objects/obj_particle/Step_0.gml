timer --;

if timer <= 0 {
	image_xscale = lerp(image_xscale,0,0.15);	
}

image_yscale = image_xscale;

if image_xscale <=0 instance_destroy();