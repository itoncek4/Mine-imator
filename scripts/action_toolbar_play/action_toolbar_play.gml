/// action_toolbar_play()

if (!timeline_playing)
{
    timeline_playing = true
    timeline_playing_start_time = current_time
    timeline_playing_start_marker = timeline_marker
    timeline_playing_last_marker = timeline_marker
    timeline_playing_start_hor_scroll = timeline.hor_scroll.value
    action_toolbar_play_start()
}
else
{
    timeline_marker = round(timeline_marker)
    action_toolbar_play_break()
}
