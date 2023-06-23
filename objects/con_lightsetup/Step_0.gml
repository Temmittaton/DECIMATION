time += 0.01;
// Pause menu
if (keyboard_check_pressed (vk_escape)) {
	paused = !paused;
	if (paused) {
		instance_deactivate_all(true);
		cursor_sprite = spr_pauseMenu_curseur;
		
		unpauseButton = button_create(obj_button_unpause, 0, SCREEN_HEIGHT - 384 * RATIO, RATIO);
		levelButton = button_create(obj_button_quitLevel, 0, SCREEN_HEIGHT - 640 * RATIO, RATIO);
		menuButton = button_create(obj_button_quitToMenu, 64 * RATIO, SCREEN_HEIGHT - 1088 * RATIO, RATIO);
		
		instance_activate_object(con_screenShake);
		instance_activate_object(obj_button_quitToMenu);
		instance_activate_object(obj_button_quitLevel);
		instance_activate_object(obj_button_unpause);
	}
}
if (paused) && (pause < MAX_PAUSE) {
	pause += 130;
}
else if (!paused) && (pause > 0) {
	pause -= 129;
}
else if (!paused) && (pause < 0) {
	instance_activate_all();
	cursor_sprite = -1;
	
	instance_destroy(obj_button_quitLevel);
	instance_destroy(obj_button_quitToMenu);
	instance_destroy(obj_button_unpause);
	time = 0;
	pause = 0;
}

//Creates Quad with two triangles. Used to make the shadows. 
//Z coordinate is used as a flag to determine if the vertex will be repositioned in the shader
function Quad(_vb,_x1,_y1,_x2,_y2){
	//Upper triangle
	vertex_position_3d(_vb,_x1,_y1,0);
	vertex_position_3d(_vb,_x1,_y1,2); //repositioned vertex
	vertex_position_3d(_vb,_x2,_y2,1);
	
	//Lower Triangle
	vertex_position_3d(_vb,_x1,_y1,2); //repositioned vertex
	vertex_position_3d(_vb,_x2,_y2,1);
	vertex_position_3d(_vb,_x2,_y2,3); //repositioned vertex
}

//Construct the vertex buffer with every wall
//Instead of using the four edges as the walls, we use the diagonals instead (Optimization)
vertex_begin(vb,vf);
var _vb = vb;
with(par_solid){
	if (object_index != obj_slope){
		Quad(_vb,x,y,x+sprite_width,y+sprite_height); //Negative Slope Diagonal Wall
		Quad(_vb,x+sprite_width,y,x,y+sprite_height); //Positive Slope Diagonal Wall
	}
}
with(obj_slope){
	Quad(_vb,x,y,x+sprite_width,y+sprite_height); //large diagonal wall
	Quad(_vb,x,y+sprite_height,mid_x,mid_y); //small diagonal wall
}
vertex_end(vb);

// Camera
#macro view view_camera[0]

camera_set_view_size(view, global.view_width, global.view_height);

if instance_exists(obj_player){
	tvx = clamp(obj_player.x-global.view_width/2, 0, room_width-global.view_width);
	tvy = clamp(obj_player.y-global.view_height/2, 0, room_height-global.view_height);
	
	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	var _xspd =.2;
	var _yspd = .05;
	vx = lerp(_cur_x, tvx, _xspd);
	vy = lerp(_cur_y, tvy, _yspd);
	
	global.vx = vx;
	global.vy = vy;
	
	camera_set_view_pos(view, vx, vy);
}