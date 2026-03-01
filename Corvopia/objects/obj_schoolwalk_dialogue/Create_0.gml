alarm_set(0,room_speed)

if global.daytime == "night" {
	global.day +=1;
	global.daytime = "day";
}