// Inherit the parent event
event_inherited();

if (activate) {
	sprite_index = SItemPistol;
}
if (doIt) {
	OPlayer.havePistol = true;
	audio_play_sound(SoNotif, 2, false);
	OPlayer.messageZone = 4;
	alarm_set(0, 300);
	activate = false;
}