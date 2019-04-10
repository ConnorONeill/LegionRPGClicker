/// @description 
if(ally.unlocked and !ally.purchased){
	//event_inherited();
	draw_set_font(fnt_brian10);
	draw_self();
	draw_set_color(colour);
	draw_set_valign(fa_top);
	draw_set_halign(fa_center);
	draw_text(x+sprite_width/2, y+5, name);
	var text1 = string(string(cost) + strRes);
	var width = string_width(text1);
	draw_text(x+sprite_width/2, y+sprite_height/2, text1);
	draw_set_halign(fa_left);
	draw_set_font(global.defaultFont);
}

