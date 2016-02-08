///scr_drink_life_potion

if(obj_player.hp < 9.5)
{
    obj_player.hp += 5;
    scr_remove_item(argument0, 1);
    return(true);
}
else
{
    return(false);
}
