/// @description Insert description here
// You can write your code in this editor
//cost = global.pDamageLevel * global.pDamageLevel * 5;
cost = round(base*(power(multi,global.pDamageLevel)));
if (cost <= global.gems){
	global.gems = global.gems - cost;
	//global.wood = global.wood - cost;
	global.pDamageLevel += 1;
	//cost = global.pDamageLevel * global.pDamageLevel * 5;
	cost = round(base*(power(1.11,global.pDamageLevel)));
}