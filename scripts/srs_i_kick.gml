///srs_i_kick()

//CHECK CURRENT POSITION
var _valid = all_segments_valid();
if(_valid) { return true; }

//https://tetris.fandom.com/wiki/SRS
//_a == 0 //OG Pos (0)
//_b == 1 //1CW/3CCW (90)
//_c == 2 //2CW/2CCW (180)
//_d == 3 //3CW/1CCW (270)

var _a = 0;
var _b = 90;
var _c = 180;
var _d = 270;

//NOTE: My y offset values are flipped compared to what is on 
//the wiki linked above. This is because the values provided 
//there are 0 at the bottom while Game Maker is 0 at the top

//a>>b
if(oldRot == _a and rot == _b)
{ 
    if(try_move_to_offset(-2, 0))   { return true; }
    if(try_move_to_offset(1, 0))    { return true; }
    if(try_move_to_offset(-2, 1))   { return true; }
    if(try_move_to_offset(1, 2))    { return true; }
}
//b>>a
else if(oldRot == _b and rot == _a)
{
    if(try_move_to_offset(2, 0))    { return true; }
    if(try_move_to_offset(-1, 0))   { return true; }
    if(try_move_to_offset(2, -1))   { return true; }
    if(try_move_to_offset(-1, 2))   { return true; }
}
//////
//b>>c
else if(oldRot == _b and rot == _c)
{
    if(try_move_to_offset(-1, 0))   { return true; }
    if(try_move_to_offset(2, 0))    { return true; }
    if(try_move_to_offset(-1, -2))  { return true; }
    if(try_move_to_offset(2, 1))    { return true; }
}
//c>>b
else if(oldRot == _c and rot == _b)
{
    if(try_move_to_offset(1, 0))    { return true; }
    if(try_move_to_offset(-2, 0))   { return true; }
    if(try_move_to_offset(1, 2))    { return true; }
    if(try_move_to_offset(-2, -1))  { return true; }
}
//////
//c>>d
else if(oldRot == _c and rot == _d)
{
    if(try_move_to_offset(2, 0))    { return true; }
    if(try_move_to_offset(-1, 0))   { return true; }
    if(try_move_to_offset(2, -1))   { return true; }
    if(try_move_to_offset(-1, 2))   { return true; }
}
//d>>c
else if(oldRot == _d and rot == _c)
{
    if(try_move_to_offset(-2, 0))   { return true; }
    if(try_move_to_offset(1, 0))    { return true; }
    if(try_move_to_offset(-2, 1))   { return true; }
    if(try_move_to_offset(1, -2))   { return true; }
}
//////
//d>>a
else if(oldRot == _d and rot == _a)
{
    if(try_move_to_offset(1, 0))    { return true; }
    if(try_move_to_offset(-2, 0))   { return true; }
    if(try_move_to_offset(1, 2))    { return true; }
    if(try_move_to_offset(-2, -1))  { return true; }
}
//a>>d
else if(oldRot == _a and rot == _d)
{
    if(try_move_to_offset(-1, 0))   { return true; }
    if(try_move_to_offset(2, 0))    { return true; }
    if(try_move_to_offset(-1, -2))  { return true; }
    if(try_move_to_offset(2, 1))    { return true; }
}

return false;
