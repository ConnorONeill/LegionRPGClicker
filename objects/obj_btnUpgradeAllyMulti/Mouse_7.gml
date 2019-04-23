/// @description 
if(ally != noone and active){
	if(global.wood >= cost and global.gems >= cost){
		global.wood -= cost;
		global.gems -= cost;
		ally.multi += 1;
		cost = global.ally[global.allyCount-1].baseCost * power(1.10,ally.num + (global.allyCount * (ally.multi+1)));
		var memes = cost;
	}
}