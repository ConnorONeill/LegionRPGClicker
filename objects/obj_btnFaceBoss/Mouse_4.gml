//if player is ready to face the boss destroy enemy create boss
if(global.bossReady){
	var arrayL = array_length_1d(global.area);
	instance_destroy(global.enemy);
	global.enemy = instance_create_depth(room_width/2+10,room_height/2, 10, global.areas[global.areaReal].boss);
}
