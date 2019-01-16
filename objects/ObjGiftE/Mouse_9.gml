instance_create_layer(x,y,"Quest",ObjGiftOpen);
instance_create_layer(x,y-32,"Quest",ObjAlarmE);
ObjLetterE._found = 1;
ObjPlayer1._numletter++;
window_set_cursor(cr_default);
instance_destroy();