global.menu = id;
var i;
depth = -50;
moving = false;
active = false;
dir = 0;
disTrav = 0;
disReq = 0 ;
tabName[0] = "Battle";
tabName[1] = "Resources";
tabName[2] = "Allies";
tabName[3] = "Premium";
tabName[4] = "Prestige";
var btnWidth = 54;
var btnHeight = 27;
var bottomBtnHeight = 34;

//btnHeight/2
//btnWidth/2
xSpd = 0;
vSpd = 0;
yDir = 0;

yDisTrav = 0;
yDisReq = 0 ;


for(i = 0;i<5; i+=1){ 
	tabBtn[i] = instance_create_depth((room_width/5)*i+btnWTop/2,y+btnHTop/2,depth-1,obj_btnChangeTab);
	tabBtn[i].sprite_index = spr_btnSBattle + i;
	tabBtn[i].tabNum = i;
	xSpot[i] = -i*(sprite_width/5);
	tabBtn[i].name = tabName[i];
}
if(x != xSpot[global.tab]){
	global.menu.xSpd = 0;
	global.menu.moving = true;
	global.menu.disReq = abs(global.menu.xSpot[global.tab] - global.menu.x); 
	global.menu.disTrav = 0;
	global.menu.dir = sign(global.menu.xSpot[global.tab] - global.menu.x);	
}

while(x != xSpot[global.tab]){
	xSpd += 3;
	x += xSpd*dir;
	with(obj_btnShop){	
		x += global.menu.xSpd*global.menu.dir;
	}
	disTrav += xSpd;
	if(disTrav >= disReq){
	//	x = xSpot[global.tab];
		with(obj_btnShop){	
			x += (global.menu.disTrav - global.menu.disReq)*-global.menu.dir;
		}
		x += (disTrav-disReq)*-dir;
		disTrav = 0;
		disReq = 0;
		dir = 0;
		xSpd = 0;
		moving = false;
	}
}
