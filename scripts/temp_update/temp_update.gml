/// temp_update()

if (type = e_temp_type.CHARACTER || type = e_temp_type.SPECIAL_BLOCK || type = e_temp_type.BODYPART)
{
	temp_update_model()
	if (type = e_temp_type.BODYPART)
		temp_update_model_part()
}
else if (type = e_temp_type.ITEM)
	temp_update_item()
else if (type = e_temp_type.BLOCK)
	temp_update_block()
else if (type_is_shape(type))
	temp_update_shape()

temp_update_rot_point()
temp_update_display_name()