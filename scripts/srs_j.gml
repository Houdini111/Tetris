///srs_j
if(rot == 0) //Bump top left
{
    segments[0].xOffset = 0;
    segments[0].yOffset = 0;
    segments[1].xOffset = 0;
    segments[1].yOffset = 1;
    segments[2].xOffset = 1;
    segments[2].yOffset = 1;
    segments[3].xOffset = 2;
    segments[3].yOffset = 1;
}
else if(rot == 90) //Bump top right
{
    segments[0].xOffset = 2;
    segments[0].yOffset = 0;
    segments[1].xOffset = 1;
    segments[1].yOffset = 0;
    segments[2].xOffset = 1;
    segments[2].yOffset = 1;
    segments[3].xOffset = 1;
    segments[3].yOffset = 2;
}
else if(rot == 180) //Bump bottom right
{
    segments[0].xOffset = 2;
    segments[0].yOffset = 2;
    segments[1].xOffset = 2;
    segments[1].yOffset = 1;
    segments[2].xOffset = 1;
    segments[2].yOffset = 1;
    segments[3].xOffset = 0;
    segments[3].yOffset = 1;
}
else if(rot == 270) //Bump bottom left
{
    segments[0].xOffset = 0;
    segments[0].yOffset = 2;
    segments[1].xOffset = 1;
    segments[1].yOffset = 2;
    segments[2].xOffset = 1;
    segments[2].yOffset = 1;
    segments[3].xOffset = 1;
    segments[3].yOffset = 0;
}
