if(moving = true and x != xSpot[global.tab]){
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
var bottomBtnHeight = 34;
if(active = true and y != room_height - sprite_height - btnHBot){
	ySpd += 3;
	y += ySpd*yDir;
	with(obj_btnShop){	
		y += global.menu.ySpd*global.menu.yDir;
	}
	with(obj_btnChangeTab){	
		y += global.menu.ySpd*global.menu.yDir;
	}
	yDisTrav += ySpd;
	if(yDisTrav >= yDisReq){
	//	x = xSpot[global.tab];
		with(obj_btnShop){	
			y += (global.menu.yDisTrav - global.menu.yDisReq)*-global.menu.yDir;
		}
		with(obj_btnChangeTab){	
			y += (global.menu.yDisTrav - global.menu.yDisReq)*-global.menu.yDir;
		}
		y += (yDisTrav-yDisReq)*-yDir;
		yDisTrav = 0;
		yDisReq = 0;
		yDir = 0;
		ySpd = 0;
		moving = false;
	}
}else if(active = false and y != room_height){
	ySpd += 3;
	y += ySpd*yDir;
	with(obj_btnShop){	
		y += global.menu.ySpd*global.menu.yDir;
	}
	with(obj_btnChangeTab){	
		y += global.menu.ySpd*global.menu.yDir;
	}
	yDisTrav += ySpd;
	if(yDisTrav >= yDisReq){
	//	x = xSpot[global.tab];
		with(obj_btnShop){	
			y += (global.menu.yDisTrav - global.menu.yDisReq)*-global.menu.yDir;
		}
		with(obj_btnChangeTab){	
			y += (global.menu.yDisTrav - global.menu.yDisReq)*-global.menu.yDir;
		}
		y += (yDisTrav-yDisReq)*-yDir;
		yDisTrav = 0;
		yDisReq = 0;
		yDir = 0;
		ySpd = 0;
		moving = false;
	}	
}