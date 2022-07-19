/// @description Insert description here
// You can write your code in this editor
function reset_variables(){
	left=0
	right = 0
	up =0
	down = 0	
}

function get_input(){
	if keyboard_check(ord("A")) left =1
	if keyboard_check(ord("D")) right =1
	if keyboard_check(ord("W")) up =1
	if keyboard_check(ord("S")) down =1
}

function calc_movement(){
	hmove = right - left
	vmove = down - up
	
	if hmove != 0 or vmove !=0 {
		//get dir of movement 
		hmove = lengthdir_x(walk_spd, _dir)
		hmove = lengthdir_y(walk_spd, _dir)
	
		//add movement to players position 
		x += hmove
		y += vmove
	}
}