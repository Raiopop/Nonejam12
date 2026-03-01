if global.pause exit;

move_and_collide(hspd,vspd,obj_wall);
hspdk = lerp(hspdk, 0, 0.15);
vspdk = lerp(vspdk, 0, 0.15);