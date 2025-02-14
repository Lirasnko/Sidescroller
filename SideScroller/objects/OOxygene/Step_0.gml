// Inherit the parent event
event_inherited();

if (activate) {
	sprite_index = SOxygene;
}
if (doIt) {
	OPlayer.oxygenBar = true;
	activate = false;
}