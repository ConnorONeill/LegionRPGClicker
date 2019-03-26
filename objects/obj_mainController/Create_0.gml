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
global.allyX = 50;
global.allyY = room_height-100;
global.enemyX = 0;
global.enemyY = 0;
global.partyX = 50;
global.partyY = room_height-200;
global.won = false;
global.winTime = 0;
global.bossReady = false;
global.areaReal = 0;
global.enemyNum = 9;
global.woodBaseLevel = 0;
global.gemBaseLevel = 0;
global.resourceBase = 1;

global.multiplier = 1;

//Damage level
global.pDamageLevel = 0;
global.pCritChance = 0;
global.pCritDamage = 2;
global.pStartDamage = 10000;
global.pBaseDamageLevel = 0;
global.pBaseDamage = global.pStartDamage*global.pBaseDamageLevel;
global.pDamage = global.pStartDamage*(global.pDamageLevel+1)*(global.pBaseDamageLevel+1);

//start the timer
alarm[0] = room_speed;


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

//create allies array
for(i=0;i<20;i+=1){ global.ally[i] = noone};
global.ally[0] = instance_create_depth(room_width/2-500, room_height-300, -10, obj_scutts);
global.ally[1] = instance_create_depth(room_width/2, room_height-300, -10, obj_ultraNick);
global.ally[2] = noone;
global.ally[3] = noone;


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


//if (global.areaNum == 0){
//	global.area = plains;
//}
//if (global.areaNum == 1){
//	global.area = artic;	
//}
//create the shop
//global.depthMenu = -100;
//global.shop = instance_create_depth(0,room_height,global.depthMenu,obj_menu);
