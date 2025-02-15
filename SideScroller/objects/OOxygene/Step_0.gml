// Inherit the parent event
event_inherited();

if (activate) {
	sprite_index = SOxygene;
}
if (doIt) {
	OPlayer.oxygenBar = true;
	audio_play_sound(SoNotif, 2, false);
	OPlayer.messageZone = 5;
	alarm_set(0, 180);
	activate = false;
}