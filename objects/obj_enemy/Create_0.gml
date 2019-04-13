/// @description Insert description here
// You can write your code in this editor
boss = false;
var levelV = global.areaNum * (global.enemyNum + 1) + global.level;
var rand = irandom_range(100,110)/100;
maxHealth = round((global.enemyHealthBase)*power(global.enemyHealthMulti,levelV));
goldValue = round(global.enemyHealthBase*power(global.enemyHealthMulti,levelV));
if(!boss){
	maxHealth = round(maxHealth * rand);
	goldValue = round(goldValue * rand);
}
weaken = 1;
hp = maxHealth;
alarm[0] = room_speed;
var randEnemy = irandom_range(0, array_length_1d(global.areas[global.areaReal].enemies) - 1);
sprite_index = global.areas[global.areaReal].enemies[randEnemy];
depth = global.menu.depth + 20;