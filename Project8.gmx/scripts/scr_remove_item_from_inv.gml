///scr_remove_item_from_inv(item, item number);               |-
//-| Example                                         |-
//-| scr_remove_item_from_inv(RAW_MEAT, 4);          |-
//-| return true if succesful                        |-

//----Looking for item and amount----


for(i = 0; i < slot_number; i++)
{
    if(slot[i] == argument0)
    {
        if(slot_n[i] >= argument1)
        {
            scr_remove_item(i, argument1);
            return(true);
        }
        else
        {
            argument1 -= slot_n[i];
            slot_n[i] -= slot_n[i];
            slot[i] = noone;
            continue;
        }
        
    }
}
