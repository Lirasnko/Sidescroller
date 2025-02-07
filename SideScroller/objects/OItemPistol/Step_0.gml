// Inherit the parent event
event_inherited();

if (activate) {
	sprite_index = SItemPistol;
}
if (doIt) {
	OPlayer.havePistol = true;
	activate = false;
}