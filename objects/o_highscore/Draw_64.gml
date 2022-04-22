draw_set_halign(fa_center);

draw_text(room_width/2 +16, room_height/5  , "Kills:" + string(kills));
draw_text(room_width/2 +16, room_height/5 + 25 , "Highscore:" + string(highscore));

draw_text(room_width/2 + 16, room_height - 10, "Press R to Restart");