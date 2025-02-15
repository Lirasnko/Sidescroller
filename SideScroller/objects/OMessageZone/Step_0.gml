var colPlayer = collision_rectangle(x, y, x + 16 * image_xscale, y + 16 * image_yscale, OPlayer, true, true);

if (colPlayer > 0 && OPlayer.messageZone != number) {
	OPlayer.messageZone = number;
	if (doIt) {
		audio_play_sound(SoNotif, 2, false);
		doIt = false;
		alarm_set(0, 300);
	}
}