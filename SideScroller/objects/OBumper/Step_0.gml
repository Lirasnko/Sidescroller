//Collision
var colPlayer = collision_ellipse(x - ((bbox_right - bbox_left) / 2) - 5, y + ((bbox_bottom - bbox_top) / 2) + 5, x + ((bbox_right - bbox_left) / 2) + 5, y - ((bbox_bottom - bbox_top) / 2) - 5, OPlayer, true, false);
var colBullet = collision_ellipse(x - ((bbox_right - bbox_left) / 2), y + ((bbox_bottom - bbox_top) / 2), x + ((bbox_right - bbox_left) / 2), y - ((bbox_bottom - bbox_top) / 2), OBullet, true, false);

if (doIt) {
	if (colPlayer > 0) {
		//Calcul de l'angle de collision
		var angle = point_direction(x, y, OPlayer.x, OPlayer.y);
	
		OPlayer.x += 30 * cos(angle);
		OPlayer.y -= 30 * sin(angle);
		OPlayer.propulsX = propulsForce * cos(angle);
		OPlayer.propulsY = propulsForce * (- sin(angle));
	}
}

if (colBullet) {
	sprite_index = SBumperOff;
	doIt = false;
	alarm_set(0, 180);
}