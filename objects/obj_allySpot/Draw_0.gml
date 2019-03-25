if(scr_inParty(ally) != -1){
	image_index = 1;
}else if(ally != noone and !ally.purchased){
	//if(){
		image_index = 2;
	//}
}else image_index = 0;

draw_self();
if(ally != noone){
	if(ally.purchased){
		draw_sprite(ally.sprite_index, ally.image_index, x, y);
		draw_text(x+10,y+10,string(num));
		var levText = "Level:" + string(ally.level + 1) + " Dam:" + string(ally.baseDamage*(ally.level+1));
		draw_text(x,y-string_height(levText) - 5, levText);
	}
}
