var arm;
//Mouvement key
var downZ = keyboard_check(ord("Z"));
var downQ = keyboard_check(ord("Q"));
var downS = keyboard_check(ord("S"));
var downD = keyboard_check(ord("D"));
//Action key
var pressShift = keyboard_check_pressed(vk_shift);
var pressA = keyboard_check_pressed(ord("A"));
var pressE = keyboard_check_pressed(ord("E"));
var mouseLeftClick = mouse_check_button_pressed(mb_left);
var downSpace = keyboard_check(vk_space);
var downShift = keyboard_check(vk_shift);
//Collision
var colWallRight = instance_place(x + 2, y, OCollider);
var colWallLeft = instance_place(x - 2, y, OCollider);
var colWallTop = instance_place(x, y - 2, OCollider);
var colWallBot = instance_place(x, y + 2, OCollider);
var colAirTop = instance_place(x, y - 2, OVoid);

//FrameRate
var frameOxy = 60 * tempOxy / oxygenMax;
var frameStam = 60 * tempStam / staminaMax;

//Destination
nextDestinationX = OListObjectif.listX[destination];
nextDestinationY = OListObjectif.listY[destination];
//Compass
if (downSpace) {
	if ((compass == noone) && (compassPointer == noone)) {
		compassPointer = instance_create_layer(x + 31 * cos(degtorad(point_direction(x, y, nextDestinationX, nextDestinationY))), y - 31 * sin(degtorad(point_direction(x, y, nextDestinationX, nextDestinationY))), "Compass", OCompassPointer);
		compass = instance_create_layer(x, y, "Compass", OCompass);
	}
}
if (!downSpace) {
	if ((compass != noone) && (compassPointer != noone)) {
		instance_destroy(compass);
		compass = noone;
		instance_destroy(compassPointer);
		compassPointer = noone;
	}
}
//CursorRotationPistol
if (pistolEquip) {
	if (270 < point_direction(x, y, mouse_x, mouse_y) || point_direction(x, y, mouse_x, mouse_y) <= 90) {
		image_xscale = 2;
	}
	else {
		image_xscale = -2;
	}
	if (45 < point_direction(x, y, mouse_x, mouse_y) && point_direction(x, y, mouse_x, mouse_y) <= 135) {
		image_angle = 90;
	}
	else if (225 < point_direction(x, y, mouse_x, mouse_y) && point_direction(x, y, mouse_x, mouse_y) <= 315) {
		image_angle = 270;
	}
}
//Fire
fire = false;
if (mouseLeftClick && pistolEquip) {
	if (energyBank != 0) {
		fire = true;
		energy -= 20;
		if (energy == 0) {
			energyBank -= 1;
			energy = 100;
		}
	}
}
//Dive
if (diving) {
	diving = false;
	YSpeed += 1.5;
}
if (!dive) {
	if (pressShift) {
		checkPointX = x;
		checkPointY = y;
		y += 6;
		diving = true;
		audio_play_sound(SoSplash, 1, false);
	}
}
//Weapon
if (pressA && havePistol) {
	pistolEquip = !pistolEquip;
	if (pistolEquip) {
		weapon = instance_create_layer(x, y, "Player", OPlayerPistol);
		weapon.image_yscale = 2;
	}
	else {
		instance_destroy(weapon);
	}
}
//Oxygen
if (dive) {
	if (tempFrameOxy == frameOxy) {
		tempFrameOxy = 0;
		if(oxygenBar) {
			oxygen -= 1;
		}
		else if (fast) {
			oxygen -= 3;
		}
		else {
			oxygen -= 2;
		}
		if (oxygen < 0) {
			oxygen = 0;
		}
	}
	else {
		tempFrameOxy += 1;
	}
}
if (!dive) {
	if(tempFrameOxy == frameOxy) {
		tempFrameOxy = 0;
		oxygen += 4;
		if (oxygen > oxygenMax) {
			oxygen = oxygenMax;
		}
	}
	else {
		tempFrameOxy += 1;
	}
}
if (oxygen == 0) {
	x = checkPointX;
	y = checkPointY;
}
//Speed / Stamina
if (downShift && !(colAirTop > 0) && (stamina > 0) && speedUp && fast) {
	maxSpeed = 5;
	if (tempFrameStam == frameStam) {
		tempFrameStam = 0;
		stamina -= 2;
		if (stamina < 0) {
			stamina = 0;
		}
	}
	else {
		tempFrameStam += 1;
	}
}
else if (fast) {
	maxSpeed = 4;
	if(tempFrameStam == frameStam) {
		tempFrameStam = 0;
		stamina += 2;
		if (stamina > staminaMax) {
			stamina = staminaMax;
		}
	}
	else {
		tempFrameStam += 1;
	}
}
else {
	maxSpeed = 3;
}
if (stamina == 0) {
	speedUp = false;
}
if (stamina == staminaMax) {
	speedUp = true;
}
//Mouvement
if (!downZ && !downQ && !downS && !downD) {
	if (YSpeed > 0) {
		YSpeed -= gravityForce / 4;
	}
	if (YSpeed < 0) {
		YSpeed += gravityForce / 4;
	}
	if (XSpeed > 0) {
		XSpeed -= gravityForce / 4;
	}
	if (XSpeed < 0) {
		XSpeed += gravityForce / 4;
	}
}
else {
	if (!audio_is_playing(SoSwimming)) {
		audio_play_sound(SoSwimming, 1, false);
	}
}
if (dive) {
	if (downZ) {
		YSpeed -= gravityForce * 2;
		if (YSpeed < - maxSpeed + gravityForce) {
		YSpeed = - maxSpeed + gravityForce;
	}
	}
	if (downS) {
		YSpeed += gravityForce * 2;
		if (YSpeed > maxSpeed + gravityForce) {
		YSpeed = maxSpeed + gravityForce;
	}
	}
}
if (downQ) {
	if (image_xscale == 2) {
		image_xscale = -2;
	}
	XSpeed -= gravityForce * 2;
	if (XSpeed < - maxSpeed) {
		XSpeed = - maxSpeed;
	}
}
if (downD) {
	if (image_xscale == -2) {
		image_xscale = 2;
	}
	XSpeed += gravityForce * 2;
	if (XSpeed > maxSpeed) {
		XSpeed = maxSpeed;
	}
}
//Inertia
if (XSpeed > 0) {
	XSpeed -= gravityForce / 4;
}
if (XSpeed < 0) {
	XSpeed += gravityForce / 4;
}
if (YSpeed > 0) {
	YSpeed -= gravityForce / 4;
}
if (YSpeed < 0) {
	YSpeed += gravityForce / 4;
}
//Gravity
if (YSpeed < gravityForce) {
	YSpeed += gravityForce;
}
//Propultion
if (propulsX > 0) {
	propulsX -= gravityForce;
}
if (propulsX < 0) {
	propulsX += gravityForce;
}
if (propulsY > 0) {
	propulsY -= gravityForce;
}
if (propulsY < 0) {
	propulsY += gravityForce;
}
if (propulsX <= gravityForce && propulsX >= -gravityForce) {
	propulsX = 0;
}
if (propulsY <= gravityForce && propulsY >= -gravityForce) {
	propulsY = 0;
}
//Physic
if (colWallRight > 0) {
	if (XSpeed > 0) {
		XSpeed = 0;
	}
	if ( propulsX > 0) {
		propulsX = 0;
	}
}
if (colWallLeft > 0) {
	if (XSpeed < 0) {
		XSpeed = 0;
	}
	if (propulsX < 0) {
		propulsX = 0;
	}
}
if (colWallTop > 0) {
	if (YSpeed < 0) {
		YSpeed = 0;
	}
	if (propulsY < 0) {
		propulsY = 0;
	}
}
if (colWallBot > 0) {
	if (YSpeed > 0) {
		YSpeed = 0;
	}
	if (propulsY > 0) {
		propulsY = 0;
	}
}
if (colAirTop > 0) {
	dive = false;
	YSpeed = 0;
	propulsY = 0;
}
if (!(colAirTop > 0)) {
	dive = true;
}

hspeed = XSpeed + propulsX;
vspeed = YSpeed + propulsY;

//Animation
if (pistolEquip) {
	if (fast) {
		if (vspeed > 0.2 || hspeed > 0.2 || vspeed < -0.2 || hspeed < -0.2) {
			sprite_index = AFastSwimmingPistol;
			if (vspeed < 0.3 && vspeed > -0.3 && (hspeed < -0.3 || hspeed > 0.3)) {
				pistolX = 4;
				pistolY = -2;
			}
			else if (vspeed > 0.3 && hspeed < 0.3 && hspeed > -0.3) {
				pistolX = 0;
				pistolY = 6;
			}
			else if (vspeed < -0.3 && hspeed < 0.3 && hspeed > -0.3) {
				pistolX = 0;
				pistolY = -6;
			}
			else if (vspeed < -0.3 && (hspeed > 0.3 || hspeed < -0.3)) {
				pistolX = 2;
				pistolY = -3;
			}
			else {
				pistolX = 2;
				pistolY = 3;
			}
		}
		else if (dive) {
			sprite_index = AFastIdleUnderPistol;
			pistolX = 0;
			pistolY = -6;
		}
		else {
			sprite_index = AFastIdleOverPistol;
			pistolX = 0;
			pistolY = -6;
		}
	}
	else {
		if (vspeed > 0.2 || hspeed > 0.2 || vspeed < -0.2 || hspeed < -0.2) {
			sprite_index = ASwimmingPistol;
			if (vspeed < 0.3 && vspeed > -0.3 && (hspeed < -0.3 || hspeed > 0.3)) {
				pistolX = 4;
				pistolY = -2;
			}
			else if (vspeed > 0.3 && hspeed < 0.3 && hspeed > -0.3) {
				pistolX = 0;
				pistolY = 6;
			}
			else if (vspeed < -0.3 && hspeed < 0.3 && hspeed > -0.3) {
				pistolX = 0;
				pistolY = -6;
			}
			else if (vspeed < -0.3 && (hspeed > 0.3 || hspeed < -0.3)) {
				pistolX = 2;
				pistolY = -3;
			}
			else {
				pistolX = 2;
				pistolY = 3;
			}
		}
		else if (dive) {
			sprite_index = AIdleUnderPistol;
			pistolX = 0;
			pistolY = -6;
		}
		else {
			sprite_index = AIdleOverPistol;
			pistolX = 0;
			pistolY = -6;
		}
	}
}
else {
	if (fast) {
		if (vspeed > 0.2 || hspeed > 0.2 || vspeed < -0.2 || hspeed < -0.2) {
			sprite_index = AFastSwimming;
		}
		else if (dive) {
			sprite_index = AFastIdleUnder;
		}
		else {
			sprite_index = AFastIdleOver;
		}
	}
	else {
		if (vspeed > 0.2 || hspeed > 0.2 || vspeed < -0.2 || hspeed < -0.2) {
			sprite_index = ASwimming;
		}
		else if (dive) {
			sprite_index = AIdleUnder;
		}
		else {
			sprite_index = AIdleOver;
		}
	}
}
//Rotation
if (hspeed > 0.3) {
	if (vspeed > 0.3) {
		image_angle = -45;
	}
	else if (vspeed < -0.3) {
		image_angle = 45;
	}
	else {
		image_angle = 0;
	}
}
else if (hspeed < -0.3) {
	if (vspeed > 0.3) {
		image_angle = 45;
	}
	else if (vspeed < -0.3) {
		image_angle = -45;
	}
	else {
		image_angle = 0;
	}
}
else {
	if (vspeed > 0.3) {
		if (image_xscale == 2) {
			image_angle = -90;
		}
		else {
			image_angle = 90;
		}
	}
	else if (vspeed < -0.3) {
		if (image_xscale == 2) {
			image_angle = 90;
		}
		else {
			image_angle = -90;
		}
	}
	else {
		image_angle = 0;
	}
}
