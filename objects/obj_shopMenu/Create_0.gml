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
ySpd = 0;
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



var h;
var v;

//allyBtn[0] = instance_create_depth(room_width*3 - (20),y+sprite_height - 20,depth-10,obj_btnChangePage);
//allyBtn[0].x -= allyBtn[0].sprite_width;
//allyBtn[0].y -= allyBtn[0].sprite_height;
//allyBtn[1] = instance_create_depth(room_width*3 - (20),y+sprite_height - 20,depth-10,obj_btnChangePage);
//allyBtn[1].x -= allyBtn[1].sprite_width;
//allyBtn[1].y -= allyBtn[1].sprite_height;
//allyBtn[1].image_xscale = -1;

for(v = 0; v < 2; v+=1){
	for(h = 0; h < 3; h += 1){
		if(h=0){ 
			var aS = instance_create_depth(room_width * 2+20,(y+80)+278*v,depth-10,obj_allySpot);
			aS.num = ((v*3)+h)
			allySpot[aS.num] = aS;
		}
		else if(h=1){ 
			aS = instance_create_depth((room_width * 2.5),(y+80)+278*v,depth-10,obj_allySpot);
			aS.x -= aS.sprite_width/2;
			aS.num = ((v*3)+h)
			allySpot[aS.num] = aS;
		}
		else if(h=2){ 
			aS = instance_create_depth(room_width * 3-20,(y+80)+278*v,depth-10,obj_allySpot);
			aS.x -= aS.sprite_width;
			aS.num = ((v*3)+h);
			allySpot[aS.num] = aS;
		}
		aS.ally = global.ally[aS.num];
		if(aS.ally != noone){
			var ul = instance_create_depth(aS.x+aS.sprite_height/2,aS.y + aS.sprite_height+10,global.menu.depth - 10, obj_btnUnlockAlly);
			ul.x -= ul.sprite_width/2;
			ul.ally = global.ally[aS.num];
			ul.cost = ul.ally.baseCost;
			ul.name = ul.name + ul.ally.name;
			
			var ul = instance_create_depth(aS.x+aS.sprite_height/2,aS.y + aS.sprite_height+10,global.menu.depth - 10, obj_btnUpgradeAlly);
			ul.x -= ul.sprite_width/2;
			ul.ally = global.ally[aS.num];
			ul.cost = ul.ally.cost;
			ul.name = ul.name + ul.ally.name;
			
			var ul = instance_create_depth(aS.x+aS.sprite_height/2,aS.y + aS.sprite_height + ul.sprite_height +10,global.menu.depth - 10, obj_btnAllyInfo);
			ul.x -= ul.sprite_width/2;
			ul.ally = global.ally[aS.num];
			ul.name = ul.ally.name + ul.name;		
		}
	}
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
