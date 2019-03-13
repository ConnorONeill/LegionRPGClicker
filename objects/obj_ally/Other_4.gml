/// @description Insert description here
// You can write your code in this editor
if (room = rm_battle){
	if(global.party[0] == id or global.party[1] == id or global.party[2] == id){
		alarm[1] = room_speed;
	}
	if(global.party[0] == id){
		x = sprite_width/2 + 10; //global.allyX;
		y = global.allyY;
	}else if(global.party[1] == id){
		x = room_width/2 //global.allyX + global.party[0].sprite_width + 10;
		y = global.allyY;
	}else if(global.party[2] == id){
		x = room_width - sprite_width/2 + 10; //global.allyX + global.party[1].x;
		y = global.allyY;
	}
		
}
