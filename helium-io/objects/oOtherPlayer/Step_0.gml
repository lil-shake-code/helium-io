/// @description Put your other player code here
try{
if(sharedProperties!=-1){
var SP = json_parse(sharedProperties)

/*
This is every instance of another player in the room you are in
You can use the key-value pairs in shared properties
to do stuff here. For starters, try updating
x = SP._x
y = SP._y
or whatever you want to update in any way from
your sharedProperties
*/


	x = real(SP._x)
	altitude = real(SP._altitude)
	y = oPlayer.y + (altitude - oPlayer.altitude)*(-12)
	weight = real(SP._weight)
	
















//DO NOT PUT YOUR CODE AFTER THIS LINE
}
}catch(e){

	show_debug_message("Error in oOtherPlayer Step. This can be temporary but if it keeps repeating, check your code!")
	show_message(e)
}


