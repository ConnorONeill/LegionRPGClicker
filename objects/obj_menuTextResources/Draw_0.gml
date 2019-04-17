draw_set_colour(c_black);
draw_set_halign(fa_center);
//var text1 = string("Wood Base: " + string(global.woodBaseLevel));
var text1 = string("Wood Per Click: " + scr_numString(scr_woodClick())+"      Wood Per Second: "+scr_numString(power(2,global.woodBaseLevel)*global.resourceBase*(global.upgradeWoodGen+1)));
draw_text(x,y,text1);
var text2 = string("   Wood Click Level: " + scr_numString(global.upgradeWoodClick+1) + "        Wood Generation level: " + string(global.upgradeWoodGen+1));
draw_text(x,y+140,text2)
var text3 = string("Wood Multiplier: " + scr_numString(power(2,global.woodBaseLevel)));
draw_text(x,y+170,text3);
//var text4 = string("Stone Per Click: " + string((global.gemBaseLevel+1)*global.resourceBase*(global.upgradeGemClick+1))+"      Stone Per Second: "+string((global.gemBaseLevel+1)*global.resourceBase*(global.upgradeGemGen+1)));
//draw_text(x,y+350,text4);
var text4 = string("Stone Per Click: " + scr_numString(scr_stoneClick()) + "      Stone Per Second: "+scr_numString(power(2,global.gemBaseLevel)*global.resourceBase*(global.upgradeGemGen+1)));
draw_text(x,y+310,text4);
var text5 = string(" Stone Click Level: " + scr_numString(global.upgradeGemClick+1) + "        Stone Generation level: " + scr_numString(global.upgradeGemGen+1));
draw_text(x,y+430,text5)
var text6 = string("Stone Multiplier: " + scr_numString(power(2,global.gemBaseLevel)));
draw_text(x,y+480,text6);


//+ "Wood Click Level: " + string(global.upgradeWoodClick) + "Total Wood Per Click: " + string((global.woodBaseLevel+1)*global.resourceBase*(global.upgradeWoodClick+1))