event_inherited();
var colBullet = collision_ellipse(x - ((bbox_right - bbox_left) / 2), y + ((bbox_bottom - bbox_top) / 2), x + ((bbox_right - bbox_left) / 2), y - ((bbox_bottom - bbox_top) / 2), OBullet, true, false);

if (x == pos1X && y == pos1Y) {
	direction = point_direction(pos1X, pos1Y, pos2X, pos2Y);
	image_angle = point_direction(pos1X, pos1Y, pos2X, pos2Y);
}
if (x == pos2X && y == pos2Y) {
	direction = point_direction(pos2X, pos2Y, pos1X, pos1Y);
	image_angle = point_direction(pos2X, pos2Y, pos1X, pos1Y);
}

if (colBullet) {
	sprite_index = SBumperMoveOff;
	doIt = false;
	alarm_set(0, 180);
}