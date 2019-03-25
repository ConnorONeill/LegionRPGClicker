/// @description Insert description here
// You can write your code in this editor
//if random_range(0,99) < global.pCritChance hp -= global.pDamage * global.pCritDamage else{
if(!global.menu.active){
	//hp -= global.pDamage;
	var cDam;
	var dText;
	dText = instance_create_depth(mouse_x,mouse_y,-50, obj_disappearingText);
	dText.moving = true;
	if(random_range(0,99) < global.pCritChanceLevel * global.pCritChanceBase){
		cDam = global.pDamageLevel * global.pStartDamage * power(2,global.pDamageMultiLevel) * (1 + (global.pCritDamageBase * global.pCritDamageLevel))
		dText.text = string(string(cDam) + "!");
	}else{
		cDam =  global.pDamageLevel * global.pStartDamage * power(2,global.pDamageMultiLevel)
		dText.font = fnt_brian14;	
		dText.text = string(cDam);
	}
	hp -= cDam;
}
//}
