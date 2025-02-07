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
//Collision
var colWallRight = instance_place(x + 2, y, OCollider);
var colWallLeft = instance_place(x - 2, y, OCollider);
var colWallTop = instance_place(x, y - 2, OCollider);
var colWallBot = instance_place(x, y + 2, OCollider);
var colAirTop = instance_place(x, y - 2, OVoid);
//FrameRate
var frame = 60 * tempOxy / oxygenMax;

//Compass
if (downSpace) {
	if ((compass == noone) && (compassPointer == noone)) {
		compassPointer = instance_create_layer(x + 31 * cos(degtorad(point_direction(x, y, nextDestinationX, nextDestinationY))), y - 31 * sin(degtorad(point_direction(x, y, nextDestinationX, nextDestinationY))), "CompassLayer", OCompassPointer);
		compass = instance_create_layer(x, y, "CompassLayer", OCompass);
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
		image_xscale = 1;
	}
	else {
		image_xscale = -1;
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
		y += 3;
		diving = true;
	}
}
//Weapon
if (pressA && havePistol) {
	pistolEquip = !pistolEquip;
	if (pistolEquip) {
		weapon = instance_create_layer(x, y, "Instances", OPlayerPistol);
	}
	else {
		instance_destroy(weapon);
	}
}
//Oxygen
if (dive) {
	if (tempFrame == frame) {
		tempFrame = 0;
		oxygen -= 1;
		if (oxygen < 0) {
			oxygen = 0;
		}
	}
	else {
		tempFrame += 1;
	}
}
if (!dive) {
	if(tempFrame == frame) {
		tempFrame = 0;
		oxygen += 4;
		if (oxygen > oxygenMax) {
			oxygen = oxygenMax;
		}
	}
	else {
		tempFrame += 1;
	}
}
if (oxygen == 0) {
	x = checkPointX;
	y = checkPointY;
}
//Mouvement
if (!downZ && !downQ && !downS && !!downD) {
	if (YSpeed > 0) {
		YSpeed -= gravityForce;
	}
	if (YSpeed < 0) {
		YSpeed += gravityForce;
	}
	if (XSpeed > 0) {
		XSpeed -= gravityForce;
	}
	if (XSpeed < 0) {
		XSpeed += gravityForce;
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
	if (image_xscale == 1) {
		image_xscale = -1;
	}
	XSpeed -= gravityForce * 2;
	if (XSpeed < - maxSpeed) {
		XSpeed = - maxSpeed;
	}
}
if (downD) {
	if (image_xscale == -1) {
		image_xscale = 1;
	}
	XSpeed += gravityForce * 2;
	if (XSpeed > maxSpeed) {
		XSpeed = maxSpeed;
	}
}
//Inertia
if (XSpeed > 0) {
	XSpeed -= gravityForce / 2;
}
if (XSpeed < 0) {
	XSpeed += gravityForce / 2;
}
if (YSpeed > 0) {
	YSpeed -= gravityForce / 2;
}
if (YSpeed < 0) {
	YSpeed += gravityForce / 2;
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
if (vspeed > 0.2 || hspeed > 0.2 || vspeed < -0.2 || hspeed < -0.2) {
	if (pistolEquip) {
		sprite_index = ASwimmingPistol;
	}
	else {
		sprite_index = ASwimming;
	}
}
else {
	if (pistolEquip) {
		sprite_index = AIdlePistol;
	}
	else {
		sprite_index = AIdle;
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
		if (image_xscale == 1) {
			image_angle = -90;
		}
		else {
			image_angle = 90;
		}
	}
	else if (vspeed < -0.3) {
		if (image_xscale == 1) {
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
