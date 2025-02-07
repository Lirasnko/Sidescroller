var colPlayer = collision_rectangle(x - ((bbox_right - bbox_left) / 2) - 2, y - ((bbox_bottom - bbox_top) / 2) - 2, x + ((bbox_right - bbox_left) / 2) + 2, y +  ((bbox_bottom - bbox_top) / 2) + 2, OPlayer, true, false);


if (colPlayer > 0) {
	if (key == noone) {
		if (OPlayer.image_xscale == 1) {
			key = instance_create_layer(OPlayer.x + 24, OPlayer.y - 20, "KeyLayer", OKeyShift);
		}
		else if (OPlayer.image_xscale == -1) {
			key = instance_create_layer(OPlayer.x - 24, OPlayer.y - 20, "KeyLayer", OKeyShift);
		}
	}
}
else {
	instance_destroy(key);
	key = noone;
}