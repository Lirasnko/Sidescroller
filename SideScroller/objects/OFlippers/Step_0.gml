// Inherit the parent event
event_inherited();

if (activate) {
	sprite_index = SFlippers;
}
if (doIt) {
	OPlayer.fast = true;
	audio_play_sound(SoNotif, 2, false);
	OPlayer.messageZone = 3;
	alarm_set(0, 180);
	activate = false;
}