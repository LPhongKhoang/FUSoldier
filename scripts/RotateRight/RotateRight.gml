if (instance_exists(ObjPlayer1))
{
	instance_destroy(ObjPlayer1);
	instance_create_layer(512,352,"Character",ObjPlayer2);
} 
else if (instance_exists(ObjPlayer2))
{
	instance_destroy(ObjPlayer2);
	instance_create_layer(512,352,"Character",ObjPlayer3);
}
else if (instance_exists(ObjPlayer3))
{
	instance_destroy(ObjPlayer3);
	instance_create_layer(512,352,"Character",ObjPlayer4);
}
else if (instance_exists(ObjPlayer4))
{
	instance_destroy(ObjPlayer4);
	instance_create_layer(512,352,"Character",ObjPlayer1);
}