GameManager.obj_Player.Money += 100;
instance_create_layer(x,y,"Quest",ObjGiftOpen);
instance_create_layer(x,y-32,"Quest",ObjAlarmAddCoin);
window_set_cursor(cr_default);
instance_destroy();