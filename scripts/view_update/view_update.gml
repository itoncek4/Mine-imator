/// view_update(view, camera)
/// @arg view
/// @arg camera

var view, cam;
view = argument0
cam = argument1

// Surface
view_update_surface(view, cam)

// Click
if (content_mouseon && window_busy = "")
{
    mouse_cursor = cr_handpoint
    if (mouse_left_pressed)
	{
        window_busy = "viewclick"
        window_focus = string(view)
    }
	
    if ((!cam || !cam.lock) && mouse_right_pressed)
	{
        view_click_x = display_mouse_get_x()
        view_click_y = display_mouse_get_y()
        window_busy = "viewmovecamera"
        window_focus = string(view)
        if (cam)
            action_tl_select_single(cam)
    }
}

if (window_focus = string(view))
{
    // Mousewheel
    if ((window_busy = "" || window_busy = "viewrotatecamera") && mouse_wheel <> 0)
	{
        if (!cam)
            cam_work_zoom_goal = clamp(cam_work_zoom_goal * (1 + 0.25 * mouse_wheel), cam_near, cam_far)
        else if (cam.value[CAMROTATE])
		{
            action_tl_select_single(cam)
            if (cam.cam_goalzoom < 0) // Reset
                cam.cam_goalzoom = cam.value[CAMROTATEDISTANCE]
            cam.cam_goalzoom = max(1, cam.cam_goalzoom * (1 + 0.25 * mouse_wheel))
        }
    }
    
    // Select or move camera
    if (window_busy = "viewclick")
	{
        mouse_cursor = cr_handpoint
		
        if ((!cam || !cam.lock) && mouse_move > 5)
		{
            view_click_x = display_mouse_get_x()
            view_click_y = display_mouse_get_y()
            window_busy = "viewrotatecamera"
            if (cam)
                action_tl_select_single(cam)
        }
		
        if (!mouse_left)
		{
            view_click(view, cam)
            window_busy = ""
        }
    }
    
    // Rotate camera
    if (window_busy = "viewrotatecamera")
	{
        mouse_cursor = cr_none
		
        if (!cam || cam.value[CAMROTATE])
            cam_control_rotate(cam, view_click_x, view_click_y)
        else
            cam_control_move(cam, view_click_x, view_click_y)
		
        if (!mouse_left)
            window_busy = ""
    }
    
    // Move camera
    if (window_busy = "viewmovecamera")
	{
        mouse_cursor = cr_none
		
        cam_control_move(cam, view_click_x, view_click_y)
		
        if (!mouse_right)
		{
            cam_work_set_focus()
            window_busy = ""
        }
    }
}
