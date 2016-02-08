///scr_add_backpack(slot, item, item number);             |-
//-| Example                                          |-
//-| scr_add_backpack(slot_clicked, obj_raw_meat, 4);     |-
//-| return true if succesful                         |-


//If slot is empty
if(backpack_slot[argument0] == noone)
    {
        //Put item in slot
        backpack_slot[argument0] = argument1;
        backpack_slot_n[argument0] += argument2;
        return(true);
    }
    //Else if slot contains the same item that I want to put in
    else if ((backpack_slot[argument0] == argument1))
    {
        //Check if it's stackable
        if(stackable[argument1] = true)
        {
            //If it is -> add it
            backpack_slot[argument0] = argument1;
            backpack_slot_n[argument0] += argument2;
            return(true);
        }
        else
        {
            return(false);
        }
        
        return(false);
    }
