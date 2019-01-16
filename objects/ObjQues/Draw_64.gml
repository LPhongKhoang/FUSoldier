draw_sprite(viewQues,-1,x,y);

if (keyboard_check(ord("T")))
{
	if (myTextBox == noone)
		myTextBox = instance_create_layer(x,y,"Quest",ObjTextBox);
}
else if (myTextBox != noone)
{
	instance_destroy(ObjTextBox);
	myTextBox = noone;
}





