//Collision
var colPlayer = collision_rectangle(x - ((bbox_right - bbox_left) / 2) - 5, y + ((bbox_bottom - bbox_top) / 2) + 5, x + ((bbox_right - bbox_left) / 2) + 5, y - ((bbox_bottom - bbox_top) / 2) - 5, OPlayer, true, false);
//KyeboardKey
var downZ = keyboard_check(ord("Z"));
var downQ = keyboard_check(ord("Q"));
var downS = keyboard_check(ord("S"));
var downD = keyboard_check(ord("D"));

if (colPlayer > 0) {
	if (image_angle = 0) {
		if (!downS) {
			streamForce = 3;
		}
		else {
			streamForce = 1.5;
		}
		OPlayer.propulsY = -streamForce;
	}
	if (image_angle = 90) {
		if (!downD) {
			streamForce = 3;
		}
		else {
			streamForce = 1.5;
		}
		OPlayer.propulsX = -streamForce;
	}
	if (image_angle = 180) {
		if (!downZ) {
			streamForce = 3;
		}
		else {
			streamForce = 1.5;
		}
		OPlayer.propulsY = streamForce;
	}
	if (image_angle = 270) {
		if (!downQ) {
			streamForce = 3;
		}
		else {
			streamForce = 1.5;
		}
		OPlayer.propulsX = streamForce;
	}
}