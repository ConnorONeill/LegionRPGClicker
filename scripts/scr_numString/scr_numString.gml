var num = argument0;
var suff = "";
var total;

if(num >= 10000 and num < 1000000){
	num = num/1000;
	suff = "K";	
}else if(num >= 1000000 and num < 1000000000){
	num = num/1000000;
	suff = "M";
}else if(num >= 1000000000 and num < 1000000000000){
	num = num/1000000000;
	suff = "B";
}else if(num >= 1000000000000 < 1000000000000000){
	num = num/1000000000000;
	suff = "T";
}else if(num >= 1000000000000000){
	num = num/1000000000000000;
	suff = "Q";
}else{
	return string(num);	
}
total = string(num) + suff;
return total;