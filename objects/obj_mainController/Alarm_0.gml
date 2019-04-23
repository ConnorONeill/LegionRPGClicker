/// @description Insert description here
// You can write your code in this editor
global.wood += scr_woodGen();
global.gems += scr_stoneGen();
global.goldGen = 0;
global.timer += 1;
with(obj_ally){
	if(purchased){
		global.goldGen += ceil(scr_allyDamage());
	}
}
global.goldGen = ceil(global.goldGen/2);
global.gold += global.goldGen;
var wText = instance_create_depth(100,20,depth - 5,obj_disappearingText);
wText.text = "+" + scr_numString(scr_woodGen());
wText.font = fnt_brian12;
wText.colour = global.brown;
wText.alphaLoss = .02;
wText.sprite = spr_wood16;
var wText = instance_create_depth(room_width-100,15,depth - 5,obj_disappearingText);
wText.text = "+" + scr_numString(scr_stoneGen());
wText.font = fnt_brian12;
wText.colour = c_gray;
wText.alphaLoss = .02;
wText.sprite = spr_stone16;
var wText = instance_create_depth(room_width-100,45,depth - 5,obj_disappearingText);
wText.text = "+" + scr_numString(global.goldGen);
wText.font = fnt_brian12;
wText.colour = c_yellow;
wText.alphaLoss = .02;
wText.sprite = spr_gold16;