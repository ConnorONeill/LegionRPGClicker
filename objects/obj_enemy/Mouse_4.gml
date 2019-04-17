/// @description Insert description here
// You can write your code in this editor
if(global.ready){
	//hp -= global.pDamage;
	var cDam;
	var dText;
	dText = instance_create_depth(mouse_x,mouse_y,-50, obj_disappearingText);
	dText.moving = true;
	
	var rand = irandom_range(0,99);
	if(rand < global.pCritChanceLevel * global.pCritChanceBase){
		cDam = ceil(scr_damage(true)*weaken);
		if(global.multiplier > 1){
			dText.font = fnt_brian14;
		}
		dText.text = string(scr_numString(cDam) + "!");
		dText.colour = c_red;
	}else{
		cDam = ceil(scr_damage(false)*weaken);
		dText.font = fnt_brian14;	
		if(global.multiplier > 1){
			dText.font = fnt_brian18;
		}
		dText.text = scr_numString(cDam);
		dText.colour = c_orange;
	}
	if(weaken > 1) dText.font += 1;
	hp -= cDam;
}
