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
	if(global.bossReady) global.level = global.enemyNum;
	if (global.enemy == noone){
		if(global.bossReady or global.level < global.enemyNum){	
			global.enemy = instance_create_depth(room_width/2+10,room_height/2, 10, obj_enemy);
	
		}if(global.level == global.enemyNum and !global.bossReady){
			global.enemy = instance_create_depth(room_width/2+10,room_height/2, 10, global.areas[global.areaReal].boss);
	}
	//if there is no enemy to replace move on to next area, can put all things assosiated to finishing area here
		}if (global.enemy == noone and global.level == global.enemyNum + 2){
			//if(global.ally[global.areaNum] != noone){
			//	global.ally[global.areaNum].unlocked = true;
			//}
			global.level = 0;
			global.areaNum += 1;
			global.areaReal += 1;
			if (global.areas[global.areaReal] = noone){
				global.areaReal = 0 ;
			}		
			var allyCheck = floor((global.areaNum-1)/2);
			if(global.ally[allyCheck] != noone){
				if(!global.ally[allyCheck].unlocked){
				global.ally[allyCheck].unlocked = true;
				var alUnl = instance_create_depth(room_width/2,100,-800,obj_disappearingText);
				alUnl.text = "Unlocked new ally "+ global.ally[allyCheck].name + "!";
				alUnl.ySpd = 0;
				alUnl.alphaLoss = .005;
				alUnl.colour = global.areas[global.areaReal].colour;
				}
			}	
			var numOArea = floor(global.areaNum/global.areasCount);
			for(i = 0; i< numOArea; i+=1){
				global.areas[global.areaReal].name = string(global.areas[global.areaReal].name + "+");	
			}
			var note = instance_create_depth(room_width/2,250,-800,obj_disappearingText);
			note.text = "New area unlocked: " + string(global.areas[global.areaReal].name);
			note.colour = global.areas[global.areaReal].colour;
			if(global.areaNum = 30 && global.won == false){
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

for(var i=0; i<global.partySize; i+=1){
	if(global.partyCd[i] != -1){
		global.partyCd[i] -= 1;
	}
}
