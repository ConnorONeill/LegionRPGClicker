draw_self();
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_set_font(fnt_brian12);
if(image_xscale = .75) draw_set_font(fnt_brian9);
draw_text(x-sprite_width/2+10, y, name);


//draw_self();
//draw_set_halign(fa_left);
//draw_set_valign(fa_center);
//draw_set_color(c_black);
//draw_set_font(fnt_brian12);
//if(image_xscale = .75) draw_set_font(fnt_brian9);
//var xPos = 0;
//if(tabNum == 0){
//	xPos = 10;
//}else if (tabNum == 1){
//	xPos = -(sprite_width/2)+10;
//}else if (tabNum == 2){
//	xPos = -(sprite_width)+10
//}
//draw_text(xPos, y, name);