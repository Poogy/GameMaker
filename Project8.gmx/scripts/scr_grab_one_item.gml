///scr_grab_one_item(slot);               |-
//-| Example                              |-
//-| scr_grab_one_item(slot_clicked);     |-
//-| return true if succesful             |-


//If slot is empty
if(slot[argument0] == noone)
    {
        return(false);
    }
    //Else if slot contains an item
    else if ((slot[argument0] != noone))
    {
        //Check if theres more than one item
        if(slot_n[argument0] > 1)
        {
            //If it is -> grab 1
            mouse_slot = slot[argument0];
            mouse_slot_n += 1;
            slot_n[argument0] -= 1;
            //return(true);
        }
        else
        {
            return(false);
        }
        return(false);
    }
