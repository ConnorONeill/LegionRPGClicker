/// @description Set variables and stuff
// You can write your code in this editor
//set all the global variables
//fuck takuma
global.tab = 0;
global.gold = 0;
global.menuOpen = false
global.wood = 0;
global.gems = 0;
global.level = 0;
global.areaNum = 0;
global.area = 0;
global.woodGen = 1;
global.gemGen = 1;
global.woodClick = 1;
global.gemClick = 1;
global.upgradeWoodClick = 0;
global.upgradeGemClick = 0;
global.upgradeWoodGen = 0;
global.upgradeGemGen = 0;
global.enemy = noone;
global.timer = 0;
global.partySize = 3;
global.allyY = room_height-100;
global.enemyX = 0;
global.enemyY = 0;
global.partyX = 50;



global.won = false;
global.winTime = 0;
//have they unlocked the boss
global.bossReady = false;
//what area the player is on, not the amount they have been through
global.areaReal = 0;
//how many enemies per area
global.enemyNum = 7;
global.woodBaseLevel = 0;
global.gemBaseLevel = 0;
global.resourceBase = 1;


//Damage level
global.pDamageLevel = 0;
global.pDamageMultiLevel = 0;
global.pCritChance = 0;
global.pCritChanceBase = 1;
global.pCritChanceLevel = 0;
global.pCritDamageStart = 1.5;
global.pCritDamageLevel = 0;
global.pCritDamageBase = .02;
global.pStartDamage = 1;

global.pBaseDamageLevel = 0;
global.pDamage = global.pStartDamage*(global.pDamageLevel+1)*(global.pBaseDamageLevel+1);
global.brown = make_color_rgb(127,63,63);

//enemy stuff
global.multiplier = 1;
global.enemyHealthBase = 10;
global.enemyHealthMulti = 1.12;
//Allies
global.allyBaseCost = 150;
global.allyCostMulti = 5;
global.allyUpgradeMulti = 1.15;
global.allyBaseDamage = 5;
global.allyMultiplier = 1;
global.allyCount = 0;

global.goldGen = 0;
//global.allyDamageMulti = 3;

//create the ally list
for(var i=0;i<100;i+=1){ global.ally[i] = noone};
global.ally[0] = instance_create_depth(0, 700, -10, obj_knight);
global.ally[1] = instance_create_depth(100, 700, -10, obj_archer);
global.ally[2] = instance_create_depth(200, 700, -10, obj_mage);
global.ally[3] = instance_create_depth(300, 700, -10, obj_gunWoman);
global.ally[4] = instance_create_depth(400, 700, -10, obj_necromancer);
global.ally[5] = instance_create_depth(500, 700, -10, obj_mech);

for(i=0;i<100;i+=1){
	if(global.ally[i] != noone){
		global.ally[i].num = i;
		global.allyCount += 1;
	}
}
with(obj_ally){
	if(num > 0){
		baseCost = global.allyBaseCost*power(global.allyCostMulti,num);
		baseDamage = global.allyBaseDamage * (num+1);
	}else{
		baseCost = global.allyBaseCost;
		baseDamage = global.allyBaseDamage;
	}
	cost = round(baseCost*power(global.allyUpgradeMulti,level+1));
	damage = baseDamage * (level+1);
}


//party stuff
global.party[0] = noone;
global.party[1]	= noone;
global.party[2] = noone;
global.partyX[0] = 110;
global.partyX[1] = room_width/2
global.partyX[2] = room_width - 110;
global.partyY = room_height-150;
global.partySize = 3;

for(var i=0; i<global.partySize; i+=1){
	global.partyCd[i] = -1;
	global.partyMaxCd[i] = -1;
}


//start the timer
alarm[0] = room_speed;

//is the game ready to take inputs
global.ready = true;

//put fonts in array
font[0] = fnt_brian12;
font[1] = fnt_brian18;
font[2] = fnt_brian9;

global.defaultColour = c_white;
global.defaultFont = font[0];

//Place enemies into array
//plains[0] = obj_stel1;
//plains[1] = obj_enemy2;
//plains[2] = obj_sabreTooth;
//plains[3] = noone;


//create party array
global.party[0] = noone;
global.party[1]	= noone;
global.party[2] = noone;

global.areas[0] = instance_create_depth(0,0,-500,obj_plains);
global.areas[1] = instance_create_depth(0,0,-500,obj_arctic);
global.areas[2] = instance_create_depth(0,0,-500,obj_grave);
global.areas[3] = instance_create_depth(0,0,-500,obj_volcano);
global.areas[4] = noone
global.areasCount = array_length_1d(global.areas);

scr_godMode();

//if (global.areaNum == 0){
//	global.area = plains;
//}
//if (global.areaNum == 1){
//	global.area = artic;	
//}
//create the shop
//global.depthMenu = -100;
//global.shop = instance_create_depth(0,room_height,global.depthMenu,obj_menu);
