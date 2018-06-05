///solidify(id)
global.active = noone;

//Cease ALL function and immediately solidify
argument0.moving = false;
argument0.falling = false;
argument0.nonmovementTimer = -1; //Alarm 1
//argument0.killTimer = -1; //Alarm 2
argument0.sliderTimer = -1; //Alarm 3
argument0.rotationTimer = -1; //Alarm 8
argument0.fallingTimer = -1; //Alarm 9
global.hardDrop = false; //Prevent duplicates by waiting until the next step
argument0.visible = 0;
//TODO RE-ADD hardDropTimer RESET
//global.control.hardDropTimer = 1/60; //Start the countdown to allowing hard drops

for(var _i = 0; _i < 4; _i++)
{
    global.segArr[segments[_i].x, segments[_i].y] = segments[_i];
}


global.control.canSwap = true;

checkLines();

if((!instance_exists(argument0) or (!argument0.moving and !argument0.falling)) and global.canSpawnNew)
{ 
    //newPeice
    global.canSpawnNew = false;
    global.active = instance_create(0 , 0, obj_piece);
} 

global.level++;
