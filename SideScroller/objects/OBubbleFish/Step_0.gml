// Inherit the parent event
event_inherited();

if (activate) {
	sprite_index = SBubbleFish;
}
if (doIt) {
	OPlayer.oxygen += 34;
	if (OPlayer.oxygen > OPlayer.oxygenMax) {
		OPlayer.oxygen = OPlayer.oxygenMax;
	}
}