draw_set_font(font);
draw_set_halign(fa_center);
//draw_set_color(c_yellow);
if(sprite == noone){
	draw_text_color(x,y,text,colour,colour,colour,colour,alpha);
}else{
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	var spr = draw_sprite_ext(sprite,0,x,y,1,1,0,-1,alpha);
	draw_text_color(x+sprWid,y,text,colour,colour,colour,colour,alpha);
}
draw_set_font(global.defaultFont);
//draw_set_color(global.defaultColour);