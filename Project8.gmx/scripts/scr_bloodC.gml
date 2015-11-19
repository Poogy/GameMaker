parsys_blood = part_system_create();
partBlood = part_type_create();

//Functions
    part_type_shape(partBlood,pt_shape_disk);
    part_type_size(partBlood,0.1,0.3,-0.01,0);
    part_type_colour_rgb(partBlood,60,255,0,0,0,0);
    part_type_alpha2(partBlood,1,0.8);
    part_type_speed(partBlood,1,9,0,0.5);
    part_type_direction(partBlood,0,359,0,0);
    part_type_gravity(partBlood,0.3,270);
    part_type_blend(partBlood,1);
    part_type_life(partBlood,15,30);
    
//Emitter
parem_blood = part_emitter_create(parsys_blood);
