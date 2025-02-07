// Inherit the parent event
event_inherited();

if (activate) {
	sprite_index = SStarFish;
}
if (doIt) {
	if (OPlayer.energy < 100) {
		OPlayer.energy = 100;
	}
	else if (OPlayer.energyBank < 3) {
		OPlayer.energyBank += 1;
	}
}
	