// Inherit the parent event
event_inherited();

if (activate) {
	sprite_index = SFlippers;
}
if (doIt) {
	OPlayer.fast = true;
	activate = false;
}