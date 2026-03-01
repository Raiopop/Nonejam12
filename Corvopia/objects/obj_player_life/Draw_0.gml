draw_sprite(sprite_index,0,x,y);
draw_sprite_ext(sprite_index,2,x,y,xscale_f,1,0,c_white,1);
draw_sprite_ext(sprite_index,1,x,y,xscale,1,0,c_white,1);

xscale = global.player_life/global.player_mlife;
xscale_f = lerp(xscale_f, xscale, 0.05);

