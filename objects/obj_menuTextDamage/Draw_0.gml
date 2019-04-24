/// @description 

// Inherit the parent event
draw_set_halign(fa_left);
draw_set_colour(c_black);
draw_set_font(fnt_brian12);
//var text1 = string("Wood Base: " + string(global.woodBaseLevel));
var xSep = 270;
var ySep1 = 110;

var text1 = " Per Click: " + scr_numString(scr_damage(false));
draw_sprite(spr_swordIcon,0,x,y);
draw_text(x+32,y, text1);

var text2 = " Per Crit: " + scr_numString(scr_damage(true));
draw_sprite(spr_swordIcon,0,x+xSep,y);
draw_text(x+32+xSep,y, text2);

var text3 = string(" Level: " + scr_numString(global.pDamageLevel+1));
draw_sprite(spr_swordIcon,0,x,y+ySep1);
draw_text(x+32,y+ySep1, text3);

var text4 = "Crit Chance: " + string(global.pCritChanceLevel*global.pCritChanceBase) + "%";
draw_text(x+xSep/2+20,y+ySep1,text4);

var text5 =  "Crit Damage: " + string(round((1.5 + (global.pCritDamageBase * global.pCritDamageLevel)) * 100)) + "%";
draw_text(x+xSep+50,y+ySep1,text5);

draw_sprite(spr_swordIcon,0,x+xSep/2,y+ySep1*2);
var text6 = string(" Multiplier: " + scr_numString(power(2,global.pDamageMultiLevel)));
draw_text(x+xSep/2+32,y+ySep1*2,text6);

var text7 = " Per Click: " + scr_numString(scr_woodClick());
draw_sprite(spr_wood,0,x,y+ySep1*3);
draw_text(x+32,y+ySep1*3,text7);

var text7 = " Per Second: " + scr_numString(scr_woodGen());
draw_sprite(spr_wood,0,x+xSep-15,y+ySep1*3);
draw_text(x+xSep-15+32,y+ySep1*3,text7);

var text8 = " Multiplier: " + scr_numString(power(2,global.woodBaseLevel));
draw_sprite(spr_wood,0,x+xSep/2+20,y+ySep1*4+25);
draw_text(x+xSep/2+20+32,y+ySep1*4+25,text8);

var text9 = " Per Click: " + scr_numString(scr_stoneClick());
draw_sprite(spr_stone,0,x-15,y+ySep1*5+25);
draw_text(x+32-15,y+ySep1*5+30,text9);

var text10 = " Per Second: " + scr_numString(scr_woodGen());
draw_sprite(spr_stone,0,x+xSep-15,y+ySep1*5+25);
draw_text(x+xSep-15+32,y+ySep1*5+25,text10);

var text11 = " Multiplier: " + scr_numString(power(2,global.gemBaseLevel));
draw_sprite(spr_stone,0,x+xSep/2+20,y+ySep1*5+75);
draw_text(x+xSep/2+20+32,y+ySep1*5+75,text11);



//var text1 = string("Wood Per Click: " + scr_numString(scr_woodClick())+"      Wood Per Second: "+scr_numString(power(2,global.woodBaseLevel)*global.resourceBase*(global.upgradeWoodGen+1)));
//draw_text(x,y,text1);
//var text2 = string("   Wood Click Level: " + scr_numString(global.upgradeWoodClick+1) + "        Wood Generation level: " + string(global.upgradeWoodGen+1));
//draw_text(x,y+140,text2)
//var text3 = string("Wood Multiplier: " + scr_numString(power(2,global.woodBaseLevel)));
//draw_text(x,y+170,text3);
//var text4 = string("Stone Per Click: " + scr_numString(scr_stoneClick()) + "      Stone Per Second: "+scr_numString(power(2,global.gemBaseLevel)*global.resourceBase*(global.upgradeGemGen+1)));
//draw_text(x,y+310,text4);
//var text5 = string(" Stone Click Level: " + scr_numString(global.upgradeGemClick+1) + "        Stone Generation level: " + scr_numString(global.upgradeGemGen+1));
//draw_text(x,y+430,text5)
//var text6 = string("Stone Multiplier: " + scr_numString(power(2,global.gemBaseLevel)));
//draw_text(x,y+480,text6);

//var text1 = string("Damage Per Click: " + scr_numString(scr_damage(false))+ "  Damage Per Crit: "+string(scr_damage(true)));
//draw_text(x,y,text1);
//var text2 = string(" Level: " + scr_numString(global.pDamageLevel+1) + "   Crit Chance: " + string(global.pCritChanceLevel*global.pCritChanceBase) + "%    Crit Damage: " + string(round((1.5 + (global.pCritDamageBase * global.pCritDamageLevel)) * 100)) + "%");
//draw_text(x,y+110,text2)
//var text3 = string("Damage Multiplier: " + scr_numString(power(2,global.pDamageMultiLevel)));
//draw_text(x,y+220,text3);


