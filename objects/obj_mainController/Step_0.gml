/// @description Insert description here
// You can write your code in this editor
//fullscreen stuff

fullScreenBtn = keyboard_check_pressed(vk_escape);
if(fullScreenBtn){ 
	if window_get_fullscreen() window_set_fullscreen(false) else window_set_fullscreen(true);
}
global.mouseHold = mouse_check_button(mb_left);
global.mousePressed = mouse_check_button_pressed(mb_left); 
global.mouseReleased = mouse_check_button_released(mb_left);


//set timers	
if(alarm[0] <= 0){
	alarm[0] = room_speed;	
}

//check/update what area player is on	
if(room == rm_battle){
	//if (global.areaNum == 0){
	//	global.area = plains;
	//}
	//if (global.areaNum == 1){
	//	global.area = artic;	
	//}
	//if (global.areaNum == 2){
	//	global.area = grave;
	//}
	//if global.areaNum == 3 global.area = noone;

	
//	var arrayL = array_length_1d(global.area);

	//if there is no enemy replace it
//	if (global.area != noone){
		//if the boss has been called 
		if(global.bossReady) global.level = global.enemyNum;
		if (global.enemy == noone){
			if(global.bossReady or global.level < global.enemyNum){	
				global.enemy = instance_create_depth(room_width/2+10,room_height/2, 10, obj_enemy);
	
			}if(global.level == global.enemyNum and !global.bossReady){
				global.enemy = instance_create_depth(room_width/2+10,room_height/2, 10, global.areas[global.areaReal].boss);
			}
	//if there is no enemy to replace move on to next area, can put all things assosiated to finishing area here
		}if (global.enemy == noone and global.level == global.enemyNum + 2){
			if(global.ally[global.areaNum] != noone){
				global.ally[global.areaNum].unlocked = true;
			}
			global.level = 0;
			global.areaNum += 1;
			global.areaReal += 1;
			if (global.areas[global.areaReal] = noone){
				global.areaReal = 0 ;
			}			
			var numOArea = floor(global.areaNum/global.areasCount);
			for(i = 0; i< numOArea; i+=1){
				global.areas[global.areaReal].name = string(global.areas[global.areaReal].name + "+");	
			}
			var note = instance_create_depth(room_width/2,250,-800,obj_disappearingText);
			note.text = "New area unlocked: " + string(global.areas[global.areaReal].name);
			if(global.areaNum = 9 && global.won == false){
				global.winTime = global.timer;
				global.won = true;
				room_goto(rm_victoryScreen);
				return;
			}
			
		
		}
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	if layer_background_get_sprite(back_id) != global.areas[global.areaReal].backg{
			layer_background_sprite(back_id, global.areas[global.areaReal].backg);
	}
}
	//unlock boys based on area clear
//set the background
	


	
//	if(global.area == plains){
//		var lay_id = layer_get_id("Background");
//		var back_id = layer_background_get_id(lay_id);
//		if layer_background_get_sprite(back_id) != spr_plainsBackground
//		{
//			layer_background_sprite(back_id, spr_plainsBackground);
//		}
//	}else if(global.area == artic){
//		var lay_id = layer_get_id("Background");
//		var back_id = layer_background_get_id(lay_id);
//		if layer_background_get_sprite(back_id) != spr_articBackground
//		{
//			layer_background_sprite(back_id, spr_articBackground);
//		}
//	}else if(global.area == grave){
//		var lay_id = layer_get_id("Background");
//		var back_id = layer_background_get_id(lay_id);
//		if layer_background_get_sprite(back_id) != spr_graveBackground
//		{
//			layer_background_sprite(back_id, spr_graveBackground);
//		}
//	}
//}
