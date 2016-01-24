///scr_item_db()
///////////////////////////////////////////////////////////////
//Create the sword item
sword = ds_map_create();
ds_map_add(sword, 'sprite', spr_player_sword);
ds_map_add(sword, 'damage', 3);
ds_map_add(sword, 'type'  , 'sword');
ds_map_add(sword, 'stack' , '10');

//Create the potion item
potion = ds_map_create();
ds_map_add(potion, 'healing', 2);
ds_map_add(potion, 'type'   , 'potion');
ds_map_add(potion, 'stack'  , '8');
///////////////////////////////////////////////////////////////
//Create the items database
global.items = ds_map_create();
ds_map_add(global.items, 'obj_sword' , sword);
ds_map_add(global.items, 'obj_potion', potion);
