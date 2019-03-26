/// @description Insert description here
// You can write your code in this editor
draw_set_valign(fa_top);
var yPos;
if(room == rm_upgrades){
	yPos = 60;	
}else yPos = 20;
if (room != rm_victoryScreen){
	if room == rm_battle draw_set_color(global.areas[global.areaReal].colour) else draw_set_color(c_black);
	draw_set_font(font[0]);
	draw_set_halign(fa_left);
	draw_text(20,room_height - 100,global.timer)
	draw_text(15,yPos, "Wood: " + string(global.wood));
	draw_set_halign(fa_right);
	draw_text(room_width - 15, yPos, "Gems: " + string(global.gems));
	draw_text(room_width/2 + 150, yPos, "Gold: " + string(global.gold));
	if room == rm_battle and global.enemy != noone && global.enemy.boss draw_text(room_width/2, 20, global.enemy.cTimer);
}else{
	draw_set_font(fnt_brian18);
	draw_set_halign(fa_center);
	var victoryText = string("Ayy you did it in: " + string(global.winTime) + " Seconds \n Connor got 159");
	draw_text(room_width/2,300,victoryText);
	draw_set_font(-1)
}

