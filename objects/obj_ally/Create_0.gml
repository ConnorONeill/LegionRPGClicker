/// @description Insert description here
// You can write your code in this editor
unlocked = false;
persistent = true;
purchased = false;
active = false;
num = -1;
alarm[2] = 4;
alarm[1] = room_speed;
baseDamage = -1;
baseCost = -1;
damage = -1;
level = 0;
sprite = sprite_index;
cd = 5;
selfCd = -1;
desc = "";
name = "";
abActive = false;
drawer = instance_create_depth(x,y,depth,obj_allyDraw);
drawer.ally = id;
multi = 0;