/// @description Insert description here
// You can write your code in this editor
//cost = global.pDamageLevel * global.pDamageLevel * 5;
cost = round(10*(power(1.11,global.pDamageLevel)));
if (cost <= global.wood && cost <= global.gems){
	global.gems = global.gems - cost;
	global.wood = global.wood - cost;
	global.pDamageLevel += 1;
	global.pDamage += baseV;
	//cost = global.pDamageLevel * global.pDamageLevel * 5;
	cost = round(10*(power(1.11,global.pDamageLevel)));
}