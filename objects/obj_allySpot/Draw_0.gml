/// @description 
draw_self();
if(ally != noone){
	if(ally.purchased){
		draw_sprite(ally.sprite_index, ally.image_index, x+sprite_width/2, y+sprite_height/2);
		//draw_text(x+10,y+10,string(num));
		var dam; 
		with(ally){
			dam = scr_allyDamage();
		}
		var levText = "Level:" + string(ally.level) + " Dam:" + string(dam);
		draw_text(x,y-string_height(levText) - 5, levText);
	}
}
