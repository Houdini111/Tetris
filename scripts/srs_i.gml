///srs_i
if(rot == 0) //to flat with 0 on the right
{
    segments[0].xOffset = 3;
    segments[0].yOffset = 1;
    segments[1].xOffset = 2;
    segments[1].yOffset = 1;
    segments[2].xOffset = 1;
    segments[2].yOffset = 1;
    segments[3].xOffset = 0;
    segments[3].yOffset = 1;
}
else if(rot == 90) //To vertical with 0 on the bottom
{
    segments[0].xOffset = 2;
    segments[0].yOffset = 3;
    segments[1].xOffset = 2;
    segments[1].yOffset = 2;
    segments[2].xOffset = 2;
    segments[2].yOffset = 1;
    segments[3].xOffset = 2;
    segments[3].yOffset = 0;
}
else if(rot == 180) //to flat with 0 on the left
{
    segments[0].xOffset = 0;
    segments[0].yOffset = 2;
    segments[1].xOffset = 1;
    segments[1].yOffset = 2;
    segments[2].xOffset = 2;
    segments[2].yOffset = 2;
    segments[3].xOffset = 3;
    segments[3].yOffset = 2;
}
else if(rot == 270) //to vertical with 0 on the top
{
    segments[0].xOffset = 1;
    segments[0].yOffset = 0;
    segments[1].xOffset = 1;
    segments[1].yOffset = 1;
    segments[2].xOffset = 1;
    segments[2].yOffset = 2;
    segments[3].xOffset = 1;
    segments[3].yOffset = 3;
}
