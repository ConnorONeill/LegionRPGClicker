/// @description Insert description here
// You can write your code in this editor
if(room == rm_battle){
	if(global.party[0] == id or global.party[1] == id or global.party[2] == id){
			draw_self();
		if(active == true){
			draw_healthbar(x-20,y-sprite_height/2-20,x+20,y-sprite_height/2-60,100,c_black,c_red,c_red,0,false,false);
		}
	}

}
if(room == rm_upgrades){
	if(purchased == true){
		draw_self();
	}
}