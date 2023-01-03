/*
/// Test
// Camera
global.view_width = display_get_width()/cameraSize;
global.view_height = display_get_height()/cameraSize;

alarm[0] = 1;

//Resize the application surface to be lower res (for pixel games + performance boost)
surface_resize(application_surface,global.view_width,global.view_height);
display_set_gui_maximize();

//turn of automaic drawing of application surface
application_surface_draw_enable(false);

//Shader uniform variable setup
u_pos = shader_get_uniform(shd_light,"u_pos");
u_zz = shader_get_uniform(shd_light,"zz");
u_str = shader_get_uniform(shd_light,"u_str");
u_dir = shader_get_uniform(shd_light,"u_dir");
u_fov = shader_get_uniform(shd_light,"u_fov");
u_nmap = shader_get_sampler_index(shd_light,"u_nmap");

u_pos2 = shader_get_uniform(shd_shadow,"u_pos");

//Vertex format and buffer setup
vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();

//shadow surface variable declaration
shad_surf = noone;


//Background layer functions
function BGbegin(){
	gpu_set_colorwriteenable(1,1,1,0);
}

function BGend(){
	gpu_set_colorwriteenable(1,1,1,1);
}

var _bg_layer = layer_get_id("Background");
var _bg_layer2 = layer_get_id("Background2");
var _bg_layer3 = layer_get_id("Background3");
var _frnt_layer = layer_get_id("FrontWalls");
layer_script_begin(_bg_layer,BGbegin);
layer_script_end(_bg_layer,BGend);
layer_script_begin(_bg_layer2,BGbegin);
layer_script_end(_bg_layer2,BGend);
layer_script_begin(_bg_layer3,BGbegin);
layer_script_end(_bg_layer3,BGend);
layer_script_begin(_frnt_layer,BGbegin);
layer_script_end(_frnt_layer,BGend);

// Normal layer functions
global.n_surf = noone;
global.vx = 0;
global.vy = 0;

function Nbegin(){
	if (!surface_exists(global.n_surf)){
		global.n_surf = surface_create(global.view_width,global.view_height);
	}
	surface_set_target(global.n_surf);
	matrix_set(matrix_world,matrix_build(-global.vx,-global.vy,0,0,0,0,1,1,1));
	draw_clear_alpha(c_white,0);
}

function Nend(){
	surface_reset_target();
	matrix_set(matrix_world,matrix_build(0,0,0,0,0,0,1,1,1));
}

var _n_layer = layer_get_id("Normal");
layer_script_begin(_n_layer,Nbegin);
layer_script_end(_n_layer,Nend);


*/
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

if (keyboard_check(vk_f1)){
	cameraSize += 0.005;
}
else if (keyboard_check(vk_f2)){
	cameraSize -= 0.005;
}