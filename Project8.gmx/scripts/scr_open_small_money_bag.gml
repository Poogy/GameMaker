///scr_open_small_money_bag(slot)                     |-
//-| Example                                          |-
//-| scr_open_small_money_bag(slot_clicked);          |-
//-| Consumes item in the slot that has been clicked! |-


//Consuming item
scr_remove_item(argument0, 1);

//Adding random amount of coins
coins += round(random_range(20, 30));

//return true
return(true);
