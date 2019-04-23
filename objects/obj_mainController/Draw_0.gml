/// @description Insert description here
// You can write your code in this editor
draw_set_valign(fa_top);
var yPos;
yPos = 20;
if (room != rm_victoryScreen){
	if room == rm_battle draw_set_color(global.areas[global.areaReal].colour) else draw_set_color(c_black);
	draw_set_font(font[0]);
	draw_set_halign(fa_left);
	draw_text(20,room_height - 100,global.timer)
	var wood = draw_sprite(spr_wood,5,15,yPos);
	draw_text(32+5+15,yPos, ": " + scr_numString(global.wood));
	draw_set_halign(fa_right);
	var txt = ": " + scr_numString(global.gems);
	var gTxt = ": " + scr_numString(global.gold);
	draw_text(room_width - 15, yPos, ": " + scr_numString(global.gems));
	draw_text(room_width - 15, yPos + 32, gTxt);
	var stone = draw_sprite(spr_stone,0,room_width - 25 - 32 - string_width(txt),yPos);
	var gold = draw_sprite(spr_gold,32,room_width - 25 - 32 - string_width(gTxt),yPos + 32);
	//draw_text(room_width/2 + 150, yPos, "\nGold: " + string(global.gold));
	if room == rm_battle and global.enemy != noone && global.enemy.boss draw_text(room_width/2, 20, global.enemy.cTimer);
}else{
	draw_set_font(fnt_brian18);
	draw_set_halign(fa_center);
	var victoryText = string("Ayy you did it in: " + string(global.winTime) + " Seconds \n Connor got 159");
	draw_text(room_width/2,300,victoryText);
	draw_set_font(-1)
}

