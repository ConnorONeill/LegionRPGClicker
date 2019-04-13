/// @description 
var tDam = 0;
with(obj_ally){
	if(purchased){
		tDam += ceil(scr_allyDamage());
	}
}
var tGen  = ceil(tDam/2);
var text1 = string("Total DPS: " + string(tDam) + "   Total Gold Gen: " + string(tGen));
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(fnt_brian12);
draw_text(x,y,text1);