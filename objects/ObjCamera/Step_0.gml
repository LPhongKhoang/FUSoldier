CamX = camera_get_view_x(view_camera[0]);
CamY = camera_get_view_y(view_camera[0]);


switch(Mode){
	case CamMode.follow_object:
		if(instance_exists(ObjFollowing)){
			if(!point_in_rectangle(ObjFollowing.x, ObjFollowing.y, 
				CamX+CamWidth*0.4, CamY+CamHeight*0.4,
				CamX+CamWidth*0.6, CamY+CamHeight*0.6)){
					
					CamX = lerp(CamX, ObjFollowing.x - CamWidth/2, 0.08);
					CamY = lerp(CamY, ObjFollowing.y - CamHeight/2, 0.08);	
			}
		}
	break;
	case CamMode.follow_mouse_drag:
		var _CurrMouseX = display_mouse_get_x();
		var _CurrMouseY = display_mouse_get_y();
		
		if(mouse_check_button(mb_left)){
			CamX += (MousePreX-_CurrMouseX)*0.5;
			CamY += (MousePreY-_CurrMouseY)*0.5;
			
		}
		MousePreX = _CurrMouseX;
		MousePreY = _CurrMouseY;
		
	break;
	case CamMode.follow_mouse_border:
		if(!point_in_rectangle(mouse_x, mouse_y, 
				CamX+CamWidth*0.1, CamY+CamHeight*0.1,
				CamX+CamWidth*0.9, CamY+CamHeight*0.9)){
					
					CamX = lerp(CamX, mouse_x - CamWidth/2, 0.05);
					CamY = lerp(CamY, mouse_y - CamHeight/2, 0.05);	
			}
	break;
	case CamMode.follow_mouse_peek:
		if(instance_exists(ObjFollowing)){
			CamX = lerp(ObjFollowing.x, mouse_x, 0.2) - CamWidth/2;
			CamY = lerp(ObjFollowing.y, mouse_y, 0.2) - CamHeight/2;
		}
	break;
	case CamMode.follow_to_target:
		CamX = lerp(CamX, TargetX-CamWidth/2, 0.1);
		CamY = lerp(CamY, TargetY-CamHeight/2, 0.1);
	break;
	case CamMode.move_to_follow_object:
		if(instance_exists(ObjFollowing)){
			CamX = lerp(CamX, ObjFollowing.x-CamWidth/2, 0.1);
			CamY = lerp(CamY, ObjFollowing.y-CamHeight/2, 0.1);
			
			// check mini small distance
			if(point_distance(CamX, CamY, ObjFollowing.x-CamWidth/2, ObjFollowing.y-CamHeight/2) < 1){
				Mode = CamMode.follow_object;
			}
		}
	break;
	
	case CamMode.move_to_mouse_peek:
		if(instance_exists(ObjFollowing)){
			CamX = lerp(CamX, ObjFollowing.x-CamWidth/2, 0.1);
			CamY = lerp(CamY, ObjFollowing.y-CamHeight/2, 0.1);
			
			// check mini small distance
			if(point_distance(CamX, CamY, ObjFollowing.x-CamWidth/2, ObjFollowing.y-CamHeight/2) < 1){
				Mode = CamMode.follow_mouse_peek;
			}
		}
	break;
		
}

// check bounceless
if(!Bounceless){
	CamX = clamp(CamX, 0, room_width-CamWidth);
	CamY = clamp(CamY, 0, room_height-CamHeight);
}

// Set Pos of Cam 0 depend on CamX, CamY 
camera_set_view_pos(view_camera[0], CamX, CamY);