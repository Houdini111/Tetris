///solidify(id)

//Cease ALL function and immediately solidify
argument0.moving = false;
argument0.falling = false;
argument0.alarm[0] = -1;
argument0.alarm[1] = -1;
argument0.alarm[2] = -1;
global.hardDrop = false; //Prevent duplicates by waiting until the next step
global.control.alarm[0] = 1; //Start the countdown to allowing hard drops

global.control.canSwap = true;

checkLines();

if(!argument0.moving and !argument0.falling) { newPeice(argument0); } 
