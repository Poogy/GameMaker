//reverse_platform(xx,yy)
//
//This script should be called when the platform changes its position abruptly
//It ensures no collisions occur that shouldn't
//
//xx and yy are the horizontal and vertical speeds of the pltaform

var xx,yy;
xx=argument0
yy=argument1
if xx!=0
{
  if (instance_place(x+xx,y,o_char))
  {
    o_char.x+=xx
  }
}
if yy!=0
{
  if (instance_place(x,y+yy,o_char))
  {
    o_char.y+=yy
  }
}
