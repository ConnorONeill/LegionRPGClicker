/// @description Insert description here
// You can write your code in this editor
boss = false;
var levelV = global.areaNum * (global.enemyNum + 1) + global.level;
maxHealth = round((30)*power(1.10,levelV));
hp = maxHealth;
alarm[0] = room_speed;
var randEnemy = irandom_range(0, array_length_1d(global.areas[global.areaReal].enemies) - 1);
sprite_index = global.areas[global.areaReal].enemies[randEnemy];
//sprite = global.areas.enemies[randEnemy];
goldValue = round(30*power(1.10,levelV));

