/// @description 
if(room == rm_battle){
	if(scr_inParty(ally)!= -1){
			draw_sprite_ext(ally.sprite_index,ally.image_index,ally.x,ally.y,ally.image_xscale,ally.image_yscale,0,c_white,ally.image_alpha);
			if(ally.active == true){
				draw_healthbar(ally.x-20,ally.y-140,ally.x+20,ally.y-100,100,c_black,c_red,c_red,0,false,true);
			}else{
				draw_set_halign(fa_center);
				draw_set_font(fnt_brian14);
				//draw_set_color(global.areas[global.areaReal].colour);
				draw_set_color(c_white);
				if(!ally.abActive){
					if(ally.selfCd < global.partyCd[scr_inParty(ally)]){
						draw_healthbar(ally.x-40,ally.y-135,ally.x+40,ally.y-105,(global.partyCd[scr_inParty(ally)]/global.partyMaxCd[scr_inParty(ally)])*100,c_black,c_red,c_blue,0,true,true);
						draw_text(ally.x,ally.y-120,string(ceil(global.partyCd[scr_inParty(ally)]/room_speed)));
					}else{
						draw_healthbar(ally.x-40,ally.y-135,ally.x+40,ally.y-105,(ally.selfCd/ally.maxCd)*100,c_black,c_red,c_blue,0,true,true);
						draw_text(ally.x,ally.y-120,string(ceil(ally.selfCd/room_speed)));
					}
				}else{
						draw_healthbar(ally.x-40,ally.y-135,ally.x+40,ally.y-105,(ally.alarm[3]/(ally.duration*room_speed))*100,c_black,c_white,c_orange,0,true,true);
						draw_text(ally.x,ally.y-120,string(ceil(ally.alarm[3]/room_speed)));
					}
			}

	}
}