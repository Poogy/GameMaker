///scr_pickup(item, number);                          |-
//-| Example                                          |-
//-| scr_pickup(obj_item_raw_meat, 4);                |-
//-| return true if succesful                         |-

//----Picking up the item----
with(obj_inventory)
{
    for(var i = 0; i < slot_number; i++)
    {
        if(scr_add_item(i, argument0, argument1))
        {
            if(!sound_isplaying(slot_sound[argument0]))
            {
                sound_play(slot_sound[argument0]);
            }
            return(true);
            break;
        }
    }
}
