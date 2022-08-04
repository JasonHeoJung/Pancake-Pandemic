healthbar_x = obj_player.x - 46;
healthbar_y = obj_player.y - 65;

draw_sprite(spr_healthbar_bg,0,healthbar_x,healthbar_y - 4);
draw_sprite_stretched(spr_healthbar,0,healthbar_x,healthbar_y,(global.playerhealth/playermaxhp) * healthbar_width, healthbar_height);
draw_sprite(spr_healthbar_border,0,healthbar_x + 1,healthbar_y + 1);