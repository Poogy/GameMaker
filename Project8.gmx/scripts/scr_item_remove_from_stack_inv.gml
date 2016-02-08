///scr_item_remove_from_stack(item);                 |-
//-| Example                                         |-
//-| scr_item_remove_from_stack(mouse_slot);         |-
//-| return true if succesful                        |-

//----Removing the item----
for(i = 0; i < slot_number; i++)
{
    if(slot[i] = noone)
    {
        mouse_slot_n -= 1;
        slot[i] = argument0;
        slot_n[i] += 1;
        return(true);
        
    }
    else
    {
        if(slot[i] = argument0)
        {
            mouse_slot_n -= 1;
            slot[i] = argument0;
            slot_n[i] += 1;
            return(true);
        }
        else
        {
            continue;
        }
    }
}
