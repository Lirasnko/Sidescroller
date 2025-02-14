var colPlayer = collision_ellipse(x - ((bbox_right - bbox_left) / 2) - 5, y + ((bbox_bottom - bbox_top) / 2) + 5, x + ((bbox_right - bbox_left) / 2) + 5, y - ((bbox_bottom - bbox_top) / 2) - 5, OPlayer, true, false);

if (colPlayer > 0) {
	//Calcul de l'angle de collision
	var angle = degtorad(point_direction(x, y, OPlayer.x, OPlayer.y));
	
	OPlayer.x += 8 * cos(angle);
	OPlayer.y -= 8 * sin(angle);
	OPlayer.propulsX = 4 * cos(angle);
	OPlayer.propulsY = 4 * (- sin(angle));
	if (doIt) {
		OPlayer.oxygen -= 10;
		if (OPlayer.energy < 100) {
			OPlayer.energy += 20;
		}
		else if (OPlayer.energyBank < 3) {
			OPlayer.energyBank += 1;
			OPlayer.energy = 20;
		}
		doIt = false;
		alarm_set(0, 60);
	}
}