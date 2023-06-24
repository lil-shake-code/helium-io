/// @description Insert description here
// You can write your code in this editor
var move = 0

if(mouse_x>x){
	move =1
}else{
	move = -1
}

x+=move*2

x = clamp(x,0,600)


altitude-= weight/100
altitude = clamp(altitude,0, 100)

if(mouse_check_button_pressed(mb_left)){
	weight++
}
if(mouse_check_button_pressed(mb_right)){
	weight--
}
weight = clamp(weight , -20, 20)
y = 400 
//SHARE WITH SERVER
global.sharedProperties = {
	_x : x,
	_altitude : altitude,
	_weight: weight
}

var enemy = instance_place(x,y,oOtherPlayer)
if(enemy != noone){
	if(weight>enemy.weight){
		SendMessageToClient(enemy.clientId , "destroy")
		score++
	}
}

image_xscale = 1.5+weight/30
if(sign(weight!=0)){
	image_yscale = -image_xscale*sign(weight)
}else{
	image_yscale = image_xscale
}
