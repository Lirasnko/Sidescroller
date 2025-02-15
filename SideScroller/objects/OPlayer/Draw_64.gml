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

//Message
if (messageZone == 1) {
	draw_rectangle_color(440, 900, 1480, 960, $7F7F7F7F, $7F7F7F7F, $7F7F7F7F, $7F7F7F7F, false);
	draw_text_transformed(475, 910, "Il faut que je retourne à ma base. (Deplacement : ZQSD)", 2, 2, 0);
}
if (messageZone == 2) {
	draw_rectangle_color(400, 900, 1520, 960, $7F7F7F7F, $7F7F7F7F, $7F7F7F7F, $7F7F7F7F, false);
	draw_text_transformed(435, 910, "Je peux regarder ma boussole (Espace), pour savoir ou aller", 2, 2, 0);
}
if (messageZone == 3) {
	draw_rectangle_color(510, 900, 1410, 960, $7F7F7F7F, $7F7F7F7F, $7F7F7F7F, $7F7F7F7F, false);
	draw_text_transformed(545, 910, "Avec mes palmes je peux nager plus vite (Shift)", 2, 2, 0);
}
if (messageZone == 4) {
	draw_rectangle_color(540, 840, 1380, 900, $7F7F7F7F, $7F7F7F7F, $7F7F7F7F, $7F7F7F7F, false);
	draw_text_transformed(575, 850, "Je peux prendre mon pistolet paralisant (A)", 2, 2, 0);
	draw_rectangle_color(490, 900, 1430, 960, $7F7F7F7F, $7F7F7F7F, $7F7F7F7F, $7F7F7F7F, false);
	draw_text_transformed(525, 910, "Et paralizer temporairement les Blobs propulseur", 2, 2, 0);
}
if (messageZone == 5) {
	draw_rectangle_color(410, 900, 1510, 960, $7F7F7F7F, $7F7F7F7F, $7F7F7F7F, $7F7F7F7F, false);
	draw_text_transformed(445, 910, "Maintenant que j'ai tou mon équipement, direction la base.", 2, 2, 0);
}
if (messageZone == 6) {
	draw_rectangle_color(700, 900, 1220, 960, $7F7F7F7F, $7F7F7F7F, $7F7F7F7F, $7F7F7F7F, false);
	draw_text_transformed(735, 910, "Ma base n'est pas par la.", 2, 2, 0);
}