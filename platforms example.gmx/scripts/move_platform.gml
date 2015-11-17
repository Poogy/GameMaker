//move_platform(xx,yy,bypass)
//
//This script moves a platform and puts its effects on the player
//
//It returns if a collision is found, and if it is, does not move
//
//xx and yy are relative to the platform's current location
//if bypass is set to 1, we let the platform move into other platforms
//
var xx,yy,bypass;
xx=argument0
yy=argument1
bypass=argument2

xprev=o_char.x
yprev=o_char.y
stop=0
movechar=0

if (place_meeting(x,y-1,o_char))
{ //move the character if it's resting on the platform
  o_char.x+=xx
  movechar=1
}

if place_meeting(x+xx,y,o_char)
{ //move the character out of the way (x values)
  if o_char.x>x
    o_char.x=x+xx+(sprite_width/2+o_char.sprite_width/2)
  else
    o_char.x=x+xx+(sprite_width/2+o_char.sprite_width/2)*-1
}

if movechar
{
  o_char.y+=yy
}

if place_meeting(x,y+yy,o_char)
{ //same with y values
  if o_char.y<y
    o_char.y=y+yy+(sprite_height/2+o_char.sprite_height/2)*-1
  else
    o_char.y=y+yy+(sprite_height/2+o_char.sprite_height/2)
}

//now check if the place to move is actually clear
if !place_free(x+xx,y+yy) && !bypass
{
  return(1)
  exit
  //return and exit both end the script here
} //I use both because I like it better

if (abs(o_char.x-xprev)>abs(10) && xx!=0) or (abs(o_char.y-yprev)>abs(10) && yy!=0)
{
  //this is a failsafe, if the player moves too far (something glitched) we cancel everything and return a collision
  o_char.x=xprev
  o_char.y=yprev
  return(0)
  exit
}

//move platform
x+=xx
y+=yy

//We have to make sure we didn't move the character into another platform:
with(o_char)
{ //if the character gets stuck in another platform
  if !place_free(x,y)
  {
    for(i=1;i<=8;i+=1)
    { //allow for slopes
      if place_free(x,y-i)
      {
        o_char.y-=i
        i=99
      }
    }
    if i!=100
    { //move back and 'stop' the script, so the platform doesn't move
      x=other.xprev
      y=other.yprev
      if instance_place(x,y,o_platform_parent)
        other.stop=1
    }
  }
}
if (stop=1 && !bypass)
{
  x-=xx
  y-=yy
  return(1)
  exit
}

return(0) //0=no collision
