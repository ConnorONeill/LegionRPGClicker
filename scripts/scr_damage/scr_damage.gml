var crit = argument0;
var dam;
if(!crit){
	dam = ceil((global.pDamageLevel + 1) * global.pStartDamage * power(2,global.pDamageMultiLevel) * global.multiplier);
}else{
	dam = ceil((global.pDamageLevel + 1) * global.pStartDamage * power(2,global.pDamageMultiLevel) * (global.pCritDamageStart + (global.pCritDamageBase * global.pCritDamageLevel)) * global.multiplier);
}
return dam;