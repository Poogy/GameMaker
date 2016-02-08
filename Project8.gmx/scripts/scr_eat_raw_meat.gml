///scr_eat_raw_meat(inventory_slot);                  |-
//-| Example                                          |-
//-| scr_eat_raw_meat(slot_clicked);                  |-
//-| Consumes item in the slot that has been clicked! |-

//----Consuming raw meat----

if(obj_player.hunger < 19.5)
{
    obj_player.hunger += 2;
    scr_remove_item(argument0, 1);
    return(true);
}
else
{
    return(false);
}
