/// @description Insert description here
// You can write your code in this editor
if(room == rm_battle /*and global.ready*/){
	if(scr_inParty(id)!= -1){
			x = global.partyX[scr_inParty(id)];
			y = global.partyY;
			draw_self();
		if(active == true){
			draw_healthbar(x-20+sprite_height/2,y-20,x+20+sprite_height/2,y-60,100,c_black,c_red,c_red,0,false,true);
		}
	}
}

//if(!global.ready){
//	if(purchased == true){
//		draw_self();
//	}
//}
if(!global.menu.active and global.menu.ySpd > 0){
	
	
}