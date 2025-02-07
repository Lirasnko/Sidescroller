//WeaponRotation
if (OPlayer.image_xscale == 1)
{
	x = OPlayer.x + 4;
	y = OPlayer.y;
	image_xscale = 1;
	image_angle = point_direction(x, y, mouse_x, mouse_y);
}
if (OPlayer.image_xscale == -1)
{
	x = OPlayer.x - 4;
	y = OPlayer.y;
	image_xscale = -1;
	image_angle = 180 + point_direction(x, y, mouse_x, mouse_y);
}
//Fire
if (OPlayer.fire) {
	var angle = point_direction(x, y, mouse_x, mouse_y)
	var bullet = instance_create_layer(x, y, "Instances", OBullet);
	bullet.image_angle = angle;
	bullet.direction = angle;
	bullet.speed = 3;
}