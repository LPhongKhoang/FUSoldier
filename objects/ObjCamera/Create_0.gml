//@description: This Camera Object is working base on camera 0 (view_camera[0]) / 7 Cameras
// Enum that contains all mode of camera
enum CamMode {
	follow_object,
	follow_mouse_drag,
	follow_mouse_border,
	follow_mouse_peek,
	follow_to_target, 
	move_to_follow_object,
	move_to_mouse_peek
}
// Current mode
Mode = CamMode.follow_mouse_border;
// Current Object Following
ObjFollowing = ObjPlayer1;

// Init target position
TargetX = 1000;
TargetY = 500;

// Cam Size
CamWidth = camera_get_view_width(view_camera[0]);
CamHeight = camera_get_view_height(view_camera[0]);


// Limit in Room
Bounceless = false

// Init previos Mouse Position (Base on Camera)
MousePreX = -1;
MousePreY = -1;