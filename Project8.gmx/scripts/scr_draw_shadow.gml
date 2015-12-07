//scr_draw_shadow(offset)
var offset = argument0;

//draw the shadow and the obj
draw_sprite_ext(sprite_index, 0, x-offset, y+offset, 1, 1, image_angle, c_black, .4);
draw_self();
