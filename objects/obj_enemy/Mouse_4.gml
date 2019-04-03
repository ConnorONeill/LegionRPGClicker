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
		cDam = scr_damage(true);
		dText.text = string(string(cDam) + "!");
		dText.colour = c_red;
	}else{
		cDam = scr_damage(false);
		dText.font = fnt_brian14;	
		dText.text = string(cDam);
		dText.colour = c_orange;
	}
	hp -= cDam;
}
