image_xscale = lerp(image_xscale, 1, 0.15);
image_yscale = image_xscale

if timer < 100 image_alpha = lerp(image_alpha,0,0.15);

timer --;

if timer <=0 room_goto(rm_debug_main);