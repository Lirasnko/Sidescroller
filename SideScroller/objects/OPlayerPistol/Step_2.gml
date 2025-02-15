//WeaponRotation
if (OPlayer.image_xscale == 2)
{
	x = OPlayer.x + OPlayer.pistolX * 2;
	y = OPlayer.y + OPlayer.pistolY * 2;
	image_xscale = 2;
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}
if (OPlayer.image_xscale == -2)
{
	x = OPlayer.x - OPlayer.pistolX * 2;
	y = OPlayer.y + OPlayer.pistolY * 2;
	image_xscale = -2;
	image_angle = 180 + point_direction(x, y, mouse_x, mouse_y);
}
//Fire
if (OPlayer.fire) {
	var angle = point_direction(x, y, mouse_x, mouse_y)
	var bullet = instance_create_layer(x, y, "Player", OBullet);
	bullet.image_xscale = 2;
	bullet.image_yscale = 2;
	bullet.image_angle = angle;
	bullet.direction = angle;
	bullet.speed = 6;
}