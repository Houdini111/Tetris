///prepareGhostSurface()
ghostX = min(ghosts[0].x, ghosts[1].x, ghosts[2].x, ghosts[3].x);
ghostY = min(ghosts[0].y, ghosts[1].y, ghosts[2].y, ghosts[3].y)-1;
//ghostY = min(ghosts[0].y, ghosts[1].y, ghosts[2].y, ghosts[3].y)-global.segmentSize;
if(!surface_exists(global.ghostSurf)) 
{
    global.ghostSurf = surface_create(4*global.segmentSize, 4*global.segmentSize); 
    //print("CREATE GHOST SURFACE");
}
surface_set_target(global.ghostSurf);
draw_clear_alpha(c_black, 0);
//draw_clear_alpha(c_purple, 0.8);
surface_reset_target();
ghosts[0].visible = true;
ghosts[1].visible = true;
ghosts[2].visible = true;
ghosts[3].visible = true;
