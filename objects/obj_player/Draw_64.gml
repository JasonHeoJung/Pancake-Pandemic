healthbar_x = obj_player.x - 46;
healthbar_y = obj_player.y - 65;

syrupbar_x = obj_player.x - 46;
syrupbar_y = obj_player.y - 85;

draw_sprite(spr_healthbar_bg,0,healthbar_x,healthbar_y - 4);
draw_sprite_stretched(spr_healthbar,0,healthbar_x,healthbar_y,(global.playerhealth/global.playermaxhealth) * healthbar_width, healthbar_height);
draw_sprite(spr_healthbar_border,0,healthbar_x + 1,healthbar_y + 1);

draw_sprite(spr_healthbar_bg,0,syrupbar_x,syrupbar_y - 4);
draw_sprite_stretched(spr_syrupbar,0,syrupbar_x,syrupbar_y,(global.syrupcount/global.syrupcapacity) * healthbar_width, healthbar_height);
draw_sprite(spr_healthbar_border,0,syrupbar_x + 1,syrupbar_y + 1);