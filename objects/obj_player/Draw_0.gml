//Set the opacity to 60% and then draw a dark gray oval for the shadow.
draw_set_alpha(.6);
draw_set_color(c_dkgray);
draw_ellipse(x-8,y-4,x+8,y+4,false);
 
//Draw my own sprite.
draw_set_alpha(1);
draw_sprite(sprite_index, image_index, x, y + z);

// Command Skill Timers
