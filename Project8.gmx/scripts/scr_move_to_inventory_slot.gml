///scr_move_to_armor_slot(item, slot, item number);

for(i = 0; i < slot_number; i++)
{
    if (slot[i] = noone)
    {
        slot[i] = argument0;
        slot_n[i] = argument2;
        return(true);
    }
    else
    {
        if (slot[i] != noone)
        {
            if (slot[i] = argument0)
            {
                if(stackable[argument0] = true)
                {
                    slot_n[i] += argument2;
                    return(true);
                }
                else
                {
                    continue;
                }
            }
        }
    }
}
