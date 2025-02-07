draw_healthbar(32, 32, 480, 96, oxygen, $FF7F7F7F & $FFFFFF, $FFFF0000 & $FFFFFF, $FFFFFF00 & $FFFFFF, 0, (($FF7F7F7F>>24) != 0), (($FF0000B2>>24) != 0));

if (havePistol) {
	for (var i = 0; i < energyBankMax; i++) {
		if (i < energyBank - 1) {
			draw_healthbar(33 + i * 80, 134, 77 + i * 80, 208, 100, $FF4C4C4C & $FFFFFF, $FF007FFF & $FFFFFF, $FF00FFFF & $FFFFFF, 3, (($FF4C4C4C>>24) != 0), (($FF000000>>24) != 0));
			draw_sprite(SBattery, 0, 30 + i * 80, 126);
		}
		else if (i == energyBank - 1) {
			draw_healthbar(33 + i * 80, 134, 77 + i * 80, 208, energy, $FF4C4C4C & $FFFFFF, $FF007FFF & $FFFFFF, $FF00FFFF & $FFFFFF, 3, (($FF4C4C4C>>24) != 0), (($FF000000>>24) != 0));
			draw_sprite(SBattery, 0, 30 + i * 80, 126);
		}
		else {
			draw_healthbar(33 + i * 80, 134, 77 + i * 80, 208, 0, $FF4C4C4C & $FFFFFF, $FF007FFF & $FFFFFF, $FF00FFFF & $FFFFFF, 3, (($FF4C4C4C>>24) != 0), (($FF000000>>24) != 0));
			draw_sprite(SBattery, 0, 30 + i * 80, 126);
		}
	}
}