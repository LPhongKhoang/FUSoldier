///@description Camera_ChangeMode
///@arg mode
///@arg ObjFollowing/ TargetX
///@arg TargetY

with(ObjCamera){
	Mode = argument[0];
	
	switch(Mode){
		case CamMode.follow_object:
		case CamMode.follow_mouse_peek:
		case CamMode.move_to_follow_object:
			ObjFollowing = argument[1]
		
		break;
		
		case CamMode.follow_to_target:
			TargetX = argument[1];
			TargetY = argument[2];
		
		break;
		
		
	}
		
}