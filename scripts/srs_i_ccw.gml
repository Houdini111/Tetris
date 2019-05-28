///srs_i_ccw
//For i, the "root" piece is segment 1
print(rot);
if(rot == 0) //Vertical with 0 on the bottom to flat with 0 on the right
{
    segments[1].y--;
    segments[0].x = segments[1].x + 1;
    segments[0].y = segments[1].y;
    segments[2].x = segments[1].x - 1;
    segments[2].y = segments[1].y;
    segments[3].x = segments[1].x - 2;
    segments[3].y = segments[1].y;
}
else if(rot == 90) //Flat with 0 on left to vertical with 0 on the bottom
{
    segments[1].x++;
    segments[0].x = segments[1].x;
    segments[0].y = segments[1].y + 1;
    segments[2].x = segments[1].x;
    segments[2].y = segments[1].y - 1;
    segments[3].x = segments[1].x;
    segments[3].y = segments[1].y - 2;
}
else if(rot == 180) //Vertical with 0 on the top to flat with 0 on the left
{
    segments[1].y++;
    segments[0].x = segments[1].x - 1;
    segments[0].y = segments[1].y;
    segments[2].x = segments[2].x + 1;
    segments[2].y = segments[1].y;
    segments[3].x = segments[1].x + 2;
    segments[3].y = segments[1].y; 
}
else if(rot == 270) //Flat with 0 on the right to vertical with 0 on the top
{
    segments[1].x--;
    segments[0].x = segments[1].x;
    segments[0].y = segments[1].y - 1;
    segments[2].x = segments[1].x;
    segments[2].y = segments[1].y + 1;
    segments[3].x = segments[1].x;
    segments[3].y = segments[1].y + 2;
}
