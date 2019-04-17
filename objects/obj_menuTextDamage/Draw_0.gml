/// @description 

// Inherit the parent event
draw_set_halign(fa_center);
draw_set_colour(c_black);
draw_set_font(fnt_brian12);
//var text1 = string("Wood Base: " + string(global.woodBaseLevel));
var text1 = string("Damage Per Click: " + scr_numString(scr_damage(false))+ "  Damage Per Crit: "+string(scr_damage(true)));
draw_text(x,y,text1);
var text2 = string("Damage Level: " + scr_numString(global.pDamageLevel+1) + "   Crit Chance: " + string(global.pCritChanceLevel*global.pCritChanceBase) + "%    Crit Damage: " + string(round((1.5 + (global.pCritDamageBase * global.pCritDamageLevel)) * 100)) + "%");
draw_text(x,y+110,text2)
var text3 = string("Damage Multiplier: " + scr_numString(power(2,global.pDamageMultiLevel)));
draw_text(x,y+220,text3);


