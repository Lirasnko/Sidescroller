var colPlayer = collision_rectangle(x, y, x + 16 * image_xscale, y + 16 * image_yscale, OPlayer, true, true);

if (colPlayer > 0) {
	instance_destroy(OPlayer);
	instance_destroy();
	room_goto_next();
}