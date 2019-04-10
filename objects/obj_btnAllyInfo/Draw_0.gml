/// @description 
if(active){
	event_inherited();
}
if(display){
	draw_set_font(fnt_brian10);
	var recWidth = 180;
	var recHeight = ceil(string_width(ally.desc)/recWidth) * (string_height(ally.desc)+5) + 25;
	draw_rectangle_color(posX,posY,posX+(recWidth*xDir),posY+(recHeight*yDir),c_black,c_black,c_black,c_purple,false);
	for(var i=0;i<5;i+=1){
		draw_rectangle(posX+i,posY+i,posX+(recWidth*xDir)-i,posY+(recHeight*yDir)-i,true);
	}
	if(xDir == 1){
		var tPosX = posX + 10;
	}else tPosX = posX - recWidth + 10;
	if(yDir == 1){
		var tPosY = posY + 10;
	}else tPosY = posY - recHeight + 10;
	draw_text_ext(tPosX,tPosY,ally.desc,string_height(ally.desc)+2,recWidth - 20);
}
