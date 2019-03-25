/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if(active){
	event_inherited();
}
if(display){
	draw_set_font(fnt_brian10);
	draw_rectangle_color(posX,posY,posX+(150*xDir),posY+(100*yDir),c_black,c_black,c_black,c_purple,false);
	for(var i=0;i<5;i+=1){
		draw_rectangle(posX+i,posY+i,posX+(150*xDir)-i,posY+(100*yDir)-i,true);
	}
	if(xDir == 1){
		var tPosX = posX + 10;
	}else tPosX = posX - 140;
	if(yDir == 1){
		var tPosY = posY + 10;
	}else tPosY = posY - 90;
	draw_text_ext(tPosX,tPosY,ally.desc,string_height(ally.desc)+2,130);
}
