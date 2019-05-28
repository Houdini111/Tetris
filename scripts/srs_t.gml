///srs_t
if(rot == 0) //Up
{
    segments[0].xOffset = 1;
    segments[0].yOffset = 1;
    segments[1].xOffset = 2;
    segments[1].yOffset = 1;
    segments[2].xOffset = 1;
    segments[2].yOffset = 0;
    segments[3].xOffset = 0;
    segments[3].yOffset = 1;
}
else if(rot == 90) //Right
{
    segments[0].xOffset = 1;
    segments[0].yOffset = 1;
    segments[1].xOffset = 1;
    segments[1].yOffset = 2;
    segments[2].xOffset = 2;
    segments[2].yOffset = 1;
    segments[3].xOffset = 1;
    segments[3].yOffset = 0;
}
else if(rot == 180) //Down
{
    segments[0].xOffset = 1;
    segments[0].yOffset = 1;
    segments[1].xOffset = 0;
    segments[1].yOffset = 1;
    segments[2].xOffset = 1;
    segments[2].yOffset = 2;
    segments[3].xOffset = 2;
    segments[3].yOffset = 1;
}
else if(rot == 270) //Left
{
    segments[0].xOffset = 1;
    segments[0].yOffset = 1;
    segments[1].xOffset = 1;
    segments[1].yOffset = 0;
    segments[2].xOffset = 0;
    segments[2].yOffset = 1;
    segments[3].xOffset = 1;
    segments[3].yOffset = 2;
}
