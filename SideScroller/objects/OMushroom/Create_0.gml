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
	stream = instance_create_layer(x, y - 32, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = instance_create_layer(x, y - 48, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = instance_create_layer(x, y - 64, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = instance_create_layer(x, y - 80, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = instance_create_layer(x, y - 96, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = noone;
}
if (image_angle == 90) {
	stream = instance_create_layer(x - 32, y, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = instance_create_layer(x - 48, y, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = instance_create_layer(x - 64, y, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = instance_create_layer(x - 80, y, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = instance_create_layer(x - 96, y, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = noone;
}
if (image_angle == 180) {
	stream = instance_create_layer(x, y + 32, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = instance_create_layer(x, y + 48, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = instance_create_layer(x, y + 64, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = instance_create_layer(x, y + 80, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = instance_create_layer(x, y + 96, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = noone;
}
if (image_angle == 270) {
	stream = instance_create_layer(x + 32, y, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = instance_create_layer(x + 48, y, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = instance_create_layer(x + 64, y, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = instance_create_layer(x + 80, y, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = instance_create_layer(x + 96, y, "Instances", OStream);
	stream.image_angle = image_angle;
	stream = noone;
}