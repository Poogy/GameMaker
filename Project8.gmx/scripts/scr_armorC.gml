parsys_armor = part_system_create();
partArmor = part_type_create();

//Functions
    part_type_shape(partArmor,pt_armor);
    part_type_size(partArmor,4,3.5,-0.01,0);
    part_type_colour_rgb(partArmor,233,255,150,172,122,144);
    part_type_alpha2(partArmor,0.9,0.4);
    //part_type_speed(partArmor,1,8,0,0.5);
    part_type_direction(partArmor,0,359,0,0);
    //part_type_gravity(partArmor,0.3,270);
    //part_type_blend(partArmor,1);
    part_type_life(partArmor,10,30);
    
//Emitter
parem_armor = part_emitter_create(parsys_armor);
