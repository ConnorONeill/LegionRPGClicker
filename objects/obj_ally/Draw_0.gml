/// @description Insert description here
// You can write your code in this editor
if(room == rm_battle /*and global.ready*/){
	if(scr_inParty(id)!= -1){
			x = global.partyX[scr_inParty(id)];
			y = global.partyY;
			draw_self();
		if(active == true){
			draw_healthbar(x-20,y-140,x+20,y-100,100,c_black,c_red,c_red,0,false,true);
		}
	}
}