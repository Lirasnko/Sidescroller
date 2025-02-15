var colPlayer = collision_rectangle(x, y, x + 16 * image_xscale, y + 16 * image_yscale, OPlayer, true, true);

tempNumber = number;
if (OPlayer.havePistol) {
	tempNumber = number + 1;
}
if (OPlayer.oxygenBar) {
	tempNumber = number + 2;
}
if ((colPlayer > 0) && (OPlayer.destination != tempNumber)) {
	OPlayer.destination = tempNumber;
}
	