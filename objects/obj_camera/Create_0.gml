//// Create blank camera
//camera_ = camera_create();

//// Create view matrix which determines what point in 3D space camera is in
//var _view_matrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);

//// Create projection matrix which determines perpective camera looks at the world from
//var _projection_matrix = matrix_build_projection_ortho(640, 480, 1, 10000);

//// Set view/projection matrices to camera
//camera_set_view_mat(camera_, _view_matrix);
//camera_set_proj_mat(camera_, _projection_matrix);

//// Assign camera to viewport
//view_camera[0] = camera_;



























////// Common variable for easily adjusting camera move speed
////camera_move_speed_ = 2;

////// Semantic variables for adjusting camera/view settings
////var _room_x = 0;
////var _room_y = 0;
////var _view_width = 256;
////var _view_height = 128;
////var _view_angle = 0;
////var _object_to_follow = obj_camera;
////var _camera_x_speed = camera_move_speed_;
////var _camera_y_speed = camera_move_speed_;
////var _view_x_border = -1;
////var _view_y_border = -1;

////// Create camera
////view_camera[0] = camera_create_view(_room_x, _room_y, 
////									_view_width, _view_height, 
////									_view_angle, _object_to_follow, 
////									_camera_x_speed, _camera_y_speed, 
////									_view_x_border, _view_y_border);
////// Make camera view visible
////view_visible[0] = true;

////// Set camera starting position to player's
////x = obj_player.x;
////y = obj_player.y;

////// Used to direct the movement of the camera and tell it where to go
////target_x_ = x;
////target_y_ = y;

////// Used to control camera's behavior
////state_ = "Player";
