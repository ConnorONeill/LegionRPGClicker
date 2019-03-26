draw_set_halign(fa_center);
//var text1 = string("Wood Base: " + string(global.woodBaseLevel));
var text1 = string("Wood Per Click: " + string((global.woodBaseLevel+1)*global.resourceBase*(global.upgradeWoodClick+1))+"      Wood Per Second: "+string((global.woodBaseLevel+1)*global.resourceBase*(global.upgradeWoodGen+1)));
draw_text(x,y,text1);
var text2 = string("   Wood Click Level: " + string(global.upgradeWoodClick+1) + "        Wood Generation level: " + string(global.upgradeWoodGen+1));
draw_text(x,y+140,text2)
var text3 = string("Wood Base: " + string((global.woodBaseLevel + 1) * global.resourceBase));
draw_text(x,y+170,text3);
var text4 = string("Wood Per Click: " + string((global.gemBaseLevel+1)*global.resourceBase*(global.upgradeGemClick+1))+"      Wood Per Second: "+string((global.gemBaseLevel+1)*global.resourceBase*(global.upgradeGemGen+1)));
draw_text(x,y+350,text1);


//+ "Wood Click Level: " + string(global.upgradeWoodClick) + "Total Wood Per Click: " + string((global.woodBaseLevel+1)*global.resourceBase*(global.upgradeWoodClick+1))