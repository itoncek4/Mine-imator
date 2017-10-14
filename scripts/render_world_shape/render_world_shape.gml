/// render_world_shape(type, vbuffer, facecamera, texture)
/// @arg type
/// @arg vbuffer
/// @arg facecamrea
/// @arg texture

var type, vbuf, facecamera, tex, rot;
type = argument0
vbuf = argument1
facecamera = argument2
tex = argument3

rot = vec3(0)

if (type = e_temp_type.SURFACE && facecamera)
{
	var pos = point3D_mul_matrix(point3D(0, 0, 0), matrix_get(matrix_world));
	rot[X] -= point_zdirection(pos[X], pos[Y], pos[Z], proj_from[X], proj_from[Y], proj_from[Z])
	rot[Z] = 90 + point_direction(pos[X], pos[Y], proj_from[X], proj_from[Y])
}

matrix_world_multiply_pre(matrix_create(point3D(0, 0, 0), rot, vec3(1)))

render_set_texture(tex)
vbuffer_render(vbuf)
