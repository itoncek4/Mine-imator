/// buffer_read_short()
/// @desc Reads a 2 byte short integer.

gml_pragma("forceinline")

return buffer_read(buffer_current, buffer_s16)
