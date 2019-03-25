draw_set_halign(fa_center);
draw_set_colour(c_black);
//var text1 = string("Wood Base: " + string(global.woodBaseLevel));
var text1 = string("Damage Per Click: " + string(scr_damage()));
draw_text(x,y,text1);
var text2 = string("Damage Level: " + string(global.pDamageLevel+1) + "   Crit Chance: " + string(global.pCritChanceLevel*global.pCritChanceBase) + "%    Crit Damage: " + string((1.5 + (global.pCritDamageBase * global.pCritDamageLevel)) * 100) + "%");
draw_text(x,y+110,text2)
var text3 = string("Damage Multiplier: " + string(power(2,global.pDamageMultiLevel)));
draw_text(x,y+210,text3);



