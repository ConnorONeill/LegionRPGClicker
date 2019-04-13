/// @description 
global.enemy.hp -= scr_damage(false);
var dText = instance_create_depth(global.enemy.x, global.enemy.y+10, global.enemy.depth-10, obj_disappearingText);
dText.text = string(scr_damage(false));
dText.font = fnt_brian14;
if(abActive){
	alarm[4] = room_speed/3;
}