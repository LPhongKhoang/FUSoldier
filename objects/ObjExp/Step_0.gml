/// @description Insert description here
// You can write your code in this editor
if (CurrentExp >= MaxExp)
{
	var _CurrentObject = pointer_null;
	if (instance_exists(ObjPlayer1))
	{
		_CurrentObject = ObjPlayer1;	
	} else if (instance_exists(ObjPlayer2))
	{
		_CurrentObject = ObjPlayer2;
	}
	_CurrentObject.Level += 1;
	CurrentExp -= MaxExp;
	MaxExp *= 2;
}