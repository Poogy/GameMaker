///scr_pickup(item, number);
with(obj_inventory)
{
 for(var i = 0; i < slot_number; i++)
 {
  if scr_add_item(i, argument0, argument1)
  {
   break;
  }
 }
}
