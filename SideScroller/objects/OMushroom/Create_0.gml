var colTop = instance_place(x, y - 2, OCollider);
var colBot = instance_place(x, y + 2, OCollider);
var colLeft = instance_place(x - 2, y, OCollider);
var colRight = instance_place(x + 2, y, OCollider);

if (colLeft > 0) {
	image_angle = 270;
}
if (colRight > 0) {
	image_angle = 90;
}
if (colBot > 0) {
	image_angle = 0;
}
if (colTop > 0) {
	image_angle = 180;
}

if (image_angle == 0) {
	stream = instance_create_layer(x, y - 64, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x, y - 96, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x, y - 128, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x, y - 160, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x, y - 192, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = noone;
}
if (image_angle == 90) {
	stream = instance_create_layer(x - 64, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x - 96, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x - 128, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x - 160, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x - 192, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = noone;
}
if (image_angle == 180) {
	stream = instance_create_layer(x, y + 64, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x, y + 96, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x, y + 128, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x, y + 160, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x, y + 192, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = noone;
}
if (image_angle == 270) {
	stream = instance_create_layer(x + 64, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x + 96, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x + 128, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x + 160, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x + 192, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = noone;
}