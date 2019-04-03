var crit = argument0;
var dam;
if(!crit){
	dam = ceil((global.pDamageLevel + 1) * global.pStartDamage * power(2,global.pDamageMultiLevel));
}else{
	dam = ceil((global.pDamageLevel + 1) * global.pStartDamage * power(2,global.pDamageMultiLevel) * (1.5 + (global.pCritDamageBase * global.pCritDamageLevel)));
}
return dam;