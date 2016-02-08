///scr_remove_item(slot, item number);               |-
//-| Example                                         |-
//-| scr_remove_item(slot_clicked, 4);               |-
//-| return true if succesful                        |-

//----Removing the item----
slot_n[argument0] -= argument1;
if(slot_n[argument0] = 0)
{
    slot[argument0] = noone;
}
