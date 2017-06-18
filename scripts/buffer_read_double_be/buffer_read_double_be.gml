/// buffer_read_double_be()
/// @desc Reads a big endian double from the buffer.

var byte, tmpbuf, value;
for (var b = 0; b < 8; b++)
	byte[b] = buffer_read_byte()

tmpbuf = buffer_create(8, buffer_fixed, 1)
for (var b = 0; b < 8; b++)
	buffer_write(tmpbuf, buffer_u8, byte[7 - b])

buffer_seek(tmpbuf, 0, 0)
value = buffer_read(tmpbuf, buffer_f64)
buffer_delete(tmpbuf)

return value