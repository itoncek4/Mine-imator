/// settings_save()

log("Saving settings", settings_file)

buffer_current = buffer_create(8, buffer_grow, 1)

buffer_write_byte(settings_format)

buffer_write_byte(room_speed)
buffer_write_string_int(setting_project_folder)
buffer_write_byte(setting_backup)
buffer_write_byte(setting_backup_time)
buffer_write_byte(setting_backup_amount)
buffer_write_byte(setting_spawn_objects)
buffer_write_byte(setting_spawn_cameras)

buffer_write_byte(setting_tip_show)
buffer_write_double(setting_tip_delay)

buffer_write_byte(setting_view_grid_size_hor)
buffer_write_byte(setting_view_grid_size_ver)
buffer_write_byte(setting_view_real_time_render)
buffer_write_int(setting_view_real_time_render_time)

buffer_write_string_int(setting_font_filename)

buffer_write_string_int(setting_language_filename)

settings_write_colors()

buffer_write_byte(setting_timeline_autoscroll)
buffer_write_byte(setting_timeline_compact)
buffer_write_byte(setting_timeline_select_jump)
buffer_write_byte(setting_z_is_up)

buffer_write_byte(setting_key_new)
buffer_write_byte(setting_key_new_control)
buffer_write_byte(setting_key_import_asset)
buffer_write_byte(setting_key_import_asset_control)
buffer_write_byte(setting_key_open)
buffer_write_byte(setting_key_open_control)
buffer_write_byte(setting_key_save)
buffer_write_byte(setting_key_save_control)
buffer_write_byte(setting_key_undo)
buffer_write_byte(setting_key_undo_control)
buffer_write_byte(setting_key_redo)
buffer_write_byte(setting_key_redo_control)
buffer_write_byte(setting_key_play)
buffer_write_byte(setting_key_play_control)
buffer_write_byte(setting_key_play_beginning)
buffer_write_byte(setting_key_play_beginning_control)
buffer_write_byte(setting_key_move_marker_right)
buffer_write_byte(setting_key_move_marker_right_control)
buffer_write_byte(setting_key_move_marker_left)
buffer_write_byte(setting_key_move_marker_left_control)
buffer_write_byte(setting_key_render)
buffer_write_byte(setting_key_render_control)
buffer_write_byte(setting_key_folder)
buffer_write_byte(setting_key_folder_control)
buffer_write_byte(setting_key_select_timelines)
buffer_write_byte(setting_key_select_timelines_control)
buffer_write_byte(setting_key_duplicate_timelines)
buffer_write_byte(setting_key_duplicate_timelines_control)
buffer_write_byte(setting_key_remove_timelines)
buffer_write_byte(setting_key_remove_timelines_control)
buffer_write_byte(setting_key_copy_keyframes)
buffer_write_byte(setting_key_copy_keyframes_control)
buffer_write_byte(setting_key_cut_keyframes)
buffer_write_byte(setting_key_cut_keyframes_control)
buffer_write_byte(setting_key_paste_keyframes)
buffer_write_byte(setting_key_paste_keyframes_control)
buffer_write_byte(setting_key_remove_keyframes)
buffer_write_byte(setting_key_remove_keyframes_control)
buffer_write_byte(setting_key_spawn_particles)
buffer_write_byte(setting_key_spawn_particles_control)
buffer_write_byte(setting_key_clear_particles)
buffer_write_byte(setting_key_clear_particles_control)

buffer_write_byte(setting_key_forward)
buffer_write_byte(setting_key_back)
buffer_write_byte(setting_key_left)
buffer_write_byte(setting_key_right)
buffer_write_byte(setting_key_ascend)
buffer_write_byte(setting_key_descend)
buffer_write_byte(setting_key_roll_forward)
buffer_write_byte(setting_key_roll_back)
buffer_write_byte(setting_key_roll_reset)
buffer_write_byte(setting_key_reset)
buffer_write_byte(setting_key_fast)
buffer_write_byte(setting_key_slow)
buffer_write_double(setting_move_speed)
buffer_write_double(setting_look_sensitivity)
buffer_write_double(setting_fast_modifier)
buffer_write_double(setting_slow_modifier)

buffer_write_byte(setting_bend_round_default)
buffer_write_int(setting_bend_detail)
buffer_write_double(setting_bend_scale)
buffer_write_byte(setting_schematic_remove_edges)
buffer_write_byte(setting_liquid_animation)
buffer_write_byte(setting_texture_filtering)
buffer_write_byte(setting_transparent_texture_filtering)
buffer_write_byte(setting_texture_filtering_level)
buffer_write_double(setting_block_brightness)

buffer_write_byte(setting_render_ssao)
buffer_write_double(setting_render_ssao_radius)
buffer_write_double(setting_render_ssao_power)
buffer_write_byte(setting_render_ssao_blur_passes)
buffer_write_int(setting_render_ssao_color)

buffer_write_byte(setting_render_shadows)
buffer_write_int(setting_render_shadows_sun_buffer_size)
buffer_write_int(setting_render_shadows_spot_buffer_size)
buffer_write_int(setting_render_shadows_point_buffer_size)
buffer_write_byte(setting_render_shadows_blur_quality)
buffer_write_double(setting_render_shadows_blur_size)

buffer_write_byte(setting_render_dof)
buffer_write_double(setting_render_dof_blur_size)

buffer_write_byte(setting_render_aa)
buffer_write_double(setting_render_aa_power)

buffer_write_byte(setting_render_watermark)

buffer_write_string_int(toolbar_location)
buffer_write_double(toolbar_size)

buffer_write_double(panel_left_bottom.size)
buffer_write_double(panel_right_bottom.size)
buffer_write_double(panel_bottom.size)
buffer_write_double(panel_top.size)
buffer_write_double(panel_left_top.size)
buffer_write_double(panel_right_top.size)

buffer_write_byte(properties.panel.num)
buffer_write_byte(ground_editor.panel.num)
buffer_write_byte(template_editor.panel.num)
buffer_write_byte(timeline.panel.num)
buffer_write_byte(timeline_editor.panel.num)
buffer_write_byte(frame_editor.panel.num)
buffer_write_byte(settings.panel.num)

buffer_write_double(view_split)

buffer_write_byte(view_main.controls)
buffer_write_byte(view_main.lights)
buffer_write_byte(view_main.particles)
buffer_write_byte(view_main.grid)
buffer_write_byte(view_main.aspect_ratio)
buffer_write_string_int(view_main.location)

buffer_write_byte(view_second.show)
buffer_write_byte(view_second.controls)
buffer_write_byte(view_second.lights)
buffer_write_byte(view_second.particles)
buffer_write_byte(view_second.grid)
buffer_write_byte(view_second.aspect_ratio)
buffer_write_string_int(view_second.location)
buffer_write_double(view_second.width)
buffer_write_double(view_second.height)

buffer_write_byte(frame_editor.color.advanced)

buffer_write_string_int(popup_exportmovie.format)
buffer_write_byte(popup_exportmovie.frame_rate)
buffer_write_int(popup_exportmovie.bit_rate)
buffer_write_byte(popup_exportmovie.include_audio)
buffer_write_byte(popup_exportmovie.remove_background)
buffer_write_byte(popup_exportmovie.include_hidden)
buffer_write_byte(popup_exportmovie.high_quality)

buffer_write_byte(popup_exportimage.remove_background)
buffer_write_byte(popup_exportimage.include_hidden)
buffer_write_byte(popup_exportimage.high_quality)

buffer_export(buffer_current, settings_file)
buffer_delete(buffer_current)
