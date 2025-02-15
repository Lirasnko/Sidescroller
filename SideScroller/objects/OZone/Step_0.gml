var colPlayer = collision_rectangle(x, y, x + 16 * image_xscale, y + 16 * image_yscale, OPlayer, true, true);

if ((colPlayer > 0) && (OPlayer.destination != number)) {
	OPlayer.destination = number;
	if (OPlayer.havePistol) {
		OPlayer.destination = number + 1;
	}
	if (OPlayer.oxygenBar) {
		OPlayer.destination = number + 2;
	}
}
	