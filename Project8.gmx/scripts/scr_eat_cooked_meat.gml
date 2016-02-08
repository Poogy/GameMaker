///scr_eat_cooked_meat(inventory_slot);               |-
//-| Example                                          |-
//-| scr_eat_cooked_meat(slot_clicked);               |-
//-| Consumes item in the slot that has been clicked! |-

//----Consuming cooked meat----

if(obj_player.hunger < 19.5)
{
    obj_player.hunger += 8;
    scr_remove_item(argument0, 1);
    return(true);
}
else
{
    return(false);
}
