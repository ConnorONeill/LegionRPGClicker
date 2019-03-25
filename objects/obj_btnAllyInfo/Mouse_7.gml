/// @description Insert description here
// You can write your code in this editor
if(active and !display){
	alarm[1] = 1;
	posX = mouse_x;
	posY = mouse_y;
	xDir = 1;
	yDir = 1;
	if(posX > room_width/2){
		xDir = -1;
	}
	if(posY > room_height/2){
		yDir = -1;
	}
}
