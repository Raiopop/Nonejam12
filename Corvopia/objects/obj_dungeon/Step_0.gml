if (!instance_exists(obj_spawner) && !instance_exists(obj_enemy)) && wave_atual < waves_max{
	spawn_timer --;
	
	if (global.dungeon_level == 1){
		if wave_atual != waves_max - 1{
			if (spawn_timer <=0){
				if spawn_timer == 0 val = irandom_range(2,4);
				repeat(val){
					//instance_create_layer(irandom_range((room_width/2)-100,(room_width/2)+100),irandom_range((room_height/2)-50,(room_height/2)+50),"Enemies",obj_spawner)	
					var _k = instance_create_layer(irandom_range((room_width/2)-100,(room_width/2)+100),irandom_range((room_height/2)-50,(room_height/2)+50),"Enemies",obj_spawner)	
					_k.image_index = 0;
				}
			
				wave_atual ++;
				spawn_timer = spawn_time
			}
		} else {
			if (spawn_timer <=0){
				if spawn_timer == 0 val = 5;
				repeat(val){
					//instance_create_layer(irandom_range((room_width/2)-100,(room_width/2)+100),irandom_range((room_height/2)-50,(room_height/2)+50),"Enemies",obj_spawner)	
					var _k = instance_create_layer(irandom_range((room_width/2)-100,(room_width/2)+100),irandom_range((room_height/2)-50,(room_height/2)+50),"Enemies",obj_spawner)	
					_k.image_index = 0;
				}
			
				wave_atual ++;
				spawn_timer = spawn_time
			}
		}
	}
	if (global.dungeon_level == 2){
		if wave_atual != waves_max - 1{
			if (spawn_timer <=0){
				if spawn_timer == 0 val = irandom_range(3,5);
				repeat(val){
					//instance_create_layer(irandom_range((room_width/2)-100,(room_width/2)+100),irandom_range((room_height/2)-50,(room_height/2)+50),"Enemies",obj_spawner)	
					var _k = instance_create_layer(irandom_range((room_width/2)-100,(room_width/2)+100),irandom_range((room_height/2)-50,(room_height/2)+50),"Enemies",obj_spawner)	
					_k.image_index = choose(0,1);
				}
			
				wave_atual ++;
				spawn_timer = spawn_time
			}
		} else {
			if (spawn_timer <=0){
				if spawn_timer == 0 val = 6;
				repeat(val){
					//instance_create_layer(irandom_range((room_width/2)-100,(room_width/2)+100),irandom_range((room_height/2)-50,(room_height/2)+50),"Enemies",obj_spawner)	
					var _k = instance_create_layer(irandom_range((room_width/2)-100,(room_width/2)+100),irandom_range((room_height/2)-50,(room_height/2)+50),"Enemies",obj_spawner)	
					_k.image_index = choose(0,1);
				}
			
				wave_atual ++;
				spawn_timer = spawn_time
			}
		}
	}
	if (global.dungeon_level == 3){
		if wave_atual != waves_max - 1{
			if (spawn_timer <=0){
				if spawn_timer == 0 val = irandom_range(4,6);
				repeat(val){
					//instance_create_layer(irandom_range((room_width/2)-100,(room_width/2)+100),irandom_range((room_height/2)-50,(room_height/2)+50),"Enemies",obj_spawner)	
					var _k = instance_create_layer(irandom_range((room_width/2)-100,(room_width/2)+100),irandom_range((room_height/2)-50,(room_height/2)+50),"Enemies",obj_spawner)	
					_k.image_index = choose(0,1,2);
				}
			
				wave_atual ++;
				spawn_timer = spawn_time
			}
		} else {
			if (spawn_timer <=0){
				if spawn_timer == 0 val = 7;
				repeat(val){
					//instance_create_layer(irandom_range((room_width/2)-100,(room_width/2)+100),irandom_range((room_height/2)-50,(room_height/2)+50),"Enemies",obj_spawner)	
					var _k = instance_create_layer(irandom_range((room_width/2)-100,(room_width/2)+100),irandom_range((room_height/2)-50,(room_height/2)+50),"Enemies",obj_spawner)	
					_k.image_index = choose(0,1,2);
				}
			
				wave_atual ++;
				spawn_timer = spawn_time
			}
		}
	}
}

if wave_atual == waves_max && !instance_exists(obj_spawner) && !instance_exists(obj_enemy){
	instance_create_depth(room_width/2,room_height/2,obj_player.depth-10,obj_key);
	wave_atual += 1;	
	inst_a.open = true;
	global.dungeon_level += 1;
}