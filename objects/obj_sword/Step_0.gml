/// @description 
if(counter < 5){
	spd = -2;
	y -= 2;
	x -= 2;
}else if(counter < 12){
	spd = 15;
	y += 4;
	x += 4;
}else{
	instance_destroy(id);
}
counter += 1;
image_angle -= spd;
