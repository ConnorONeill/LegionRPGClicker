/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_healthbar(x-50,y-150, x+50 , y-130, hp/maxHealth*100, c_black, c_red, c_blue, 0, true, true);
draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_text(x, y - 140, string(hp));
draw_set_color(c_black);
