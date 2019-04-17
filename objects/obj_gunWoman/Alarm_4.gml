/// @description 
global.enemy.hp -= ceil(scr_damage(false)*global.allyMultiplier*global.enemy.weaken);
var dText = instance_create_depth(global.enemy.x, global.enemy.y+10, global.enemy.depth-10, obj_disappearingText);
dText.text = scr_numString(scr_damage(false));
dText.font = fnt_brian14;
if(abActive){
	alarm[4] = room_speed/3;
}