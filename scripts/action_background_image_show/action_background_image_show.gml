/// action_background_image_show(show)
/// @arg show

var show;

if (history_undo)
    show = history_data.oldval
else if (history_redo)
    show = history_data.newval
else
{
    show = argument0
    history_set_var(action_background_image_show, background_image_show, show, false)
}

background_image_show = show
