var colPlayer = collision_ellipse(x - 32, y - 32, x + 32, y + 32, OPlayer, true, false);
var pressE = keyboard_check_pressed(ord("E"));

if (doIt) {
	doIt = false;
}
if (activate) {
	if (colPlayer > 0) {
		if (key == noone) {
			if (OPlayer.image_xscale == 1) {
				key = instance_create_layer(OPlayer.x + 24, OPlayer.y - 20, "KeyLayer", OKeyE);
			}
			else if (OPlayer.image_xscale == -1) {
				key = instance_create_layer(OPlayer.x - 24, OPlayer.y - 20, "KeyLayer", OKeyE);
			}
		}
	}
	else {
		instance_destroy(key);
		key = noone;
	}

	if (pressE && (colPlayer > 0)) {
		doIt = true;
	}
	else {
		doIt = false;
	}
}
else {
	sprite_index = noone;
	instance_destroy(key);
	key = noone;
}