if(tabNum != global.tab){
	global.menu.xSpd = 0;
	global.tab = tabNum;
	global.menu.moving = true;
	global.menu.disReq = abs(global.menu.xSpot[global.tab] - global.menu.x); 
	global.menu.disTrav = 0;
	global.menu.dir = sign(global.menu.xSpot[global.tab] - global.menu.x);
}
