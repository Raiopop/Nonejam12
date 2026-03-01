draw_self();

if (flash > 0) 
{
flash = lerp(flash, 0, 0.15);
shader_set(sh_white);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,flash);
shader_reset();
}
