///scr_move_to_armor_slot(item, slot, item number);

for(i = 0; i < backpack_slot_number; i++)
{
    if (backpack_slot[i] = noone)
    {
        backpack_slot[i] = argument0;
        backpack_slot_n[i] = argument2;
        return(true);
    }
    else
    {
        if (backpack_slot[i] != noone)
        {
                if (backpack_slot[i] = argument0)
                {
                    if(stackable[argument0] = true)
                    {
                        backpack_slot_n[i] += argument2;
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
