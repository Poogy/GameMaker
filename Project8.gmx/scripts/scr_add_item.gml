///scr_add_item(slot, item, item number);             |-
//-| Example                                          |-
//-| scr_add_item(slot_clicked, obj_raw_meat, 4);     |-
//-| return true if succesful                         |-



//If slot is empty
if(slot[argument0] == noone)
    {
        //Put item in slot
        slot[argument0] = argument1;
        slot_n[argument0] += argument2;
        return(true);
    }
    //Else if slot contains the same item that I want to put in
    else if ((slot[argument0] == argument1))
    {
        //Check if it's stackable
        if(stackable[argument1] = true)
        {
            //If it is -> add it
            slot[argument0] = argument1;
            slot_n[argument0] += argument2;
            return(true);
        }
        else
        {
            return(false);
        }
        return(false);
    }
