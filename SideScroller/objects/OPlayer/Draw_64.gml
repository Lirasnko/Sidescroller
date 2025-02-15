//OxygeneVisual
if (oxygen <= 35 && oxygen > 10) {
	draw_sprite_ext(SBlackBorder, 0, 0, 0, 2, 2, 0, c_white, (104 - ((oxygen - 10) * 4)) / 100);
}
if (oxygen <= 10) {
	draw_sprite_ext(SBlackBorder, 0, 0, 0, 2, 2, 0, c_white, 1);
	draw_sprite_ext(SBlackFull, 0, 0, 0, 2, 2, 0, c_white, (104 - (oxygen * 10)) / 100);
}

//OxygeneBar
if (!oxygenBar) {
	draw_healthbar(80, 34, 526, 94, oxygen, $FF7F7F7F & $FFFFFF, $FFFF0000 & $FFFFFF, $FFFFFF00 & $FFFFFF, 0, (($FF7F7F7F>>24) != 0), (($FF0000B2>>24) != 0));
	draw_sprite(SOxygene1, 0, 32, 32);
}
else {
	draw_healthbar(80, 34, 966, 94, oxygen, $FF7F7F7F & $FFFFFF, $FFFF0000 & $FFFFFF, $FFFFFF00 & $FFFFFF, 0, (($FF7F7F7F>>24) != 0), (($FF0000B2>>24) != 0));
	draw_sprite(SOxygene2, 0, 32, 32);
}

//StaminaBar
if (fast) {
	draw_healthbar(80, 128, 528, 174, stamina, $FF4C4C4C & $FFFFFF, $FF007F00 & $FFFFFF, $FF00B200 & $FFFFFF, 0, (($FF4C4C4C>>24) != 0), (($FF000000>>24) != 0));
	if (!speedUp) {
		draw_sprite(SBlackStamina, 0, 80, 128);
	}
}

//EnergyBar
if (havePistol) {
	for (var i = 0; i < energyBankMax; i++) {
		if (i < energyBank - 1) {
			draw_healthbar(81 + i * 80, 214, 125 + i * 80, 288, 100, $FF4C4C4C & $FFFFFF, $FF007FFF & $FFFFFF, $FF00FFFF & $FFFFFF, 3, (($FF4C4C4C>>24) != 0), (($FF000000>>24) != 0));
			draw_sprite(SBattery, 0, 78 + i * 80, 206);
		}
		else if (i == energyBank - 1) {
			draw_healthbar(81 + i * 80, 214, 125 + i * 80, 288, energy, $FF4C4C4C & $FFFFFF, $FF007FFF & $FFFFFF, $FF00FFFF & $FFFFFF, 3, (($FF4C4C4C>>24) != 0), (($FF000000>>24) != 0));
			draw_sprite(SBattery, 0, 78 + i * 80, 206);
		}
		else {
			draw_healthbar(81 + i * 80, 214, 125 + i * 80, 288, 0, $FF4C4C4C & $FFFFFF, $FF007FFF & $FFFFFF, $FF00FFFF & $FFFFFF, 3, (($FF4C4C4C>>24) != 0), (($FF000000>>24) != 0));
			draw_sprite(SBattery, 0, 78 + i * 80, 206);
		}
	}
}