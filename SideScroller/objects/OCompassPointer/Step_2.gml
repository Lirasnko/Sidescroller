x = OPlayer.x + (63 * cos(degtorad(point_direction(OPlayer.x, OPlayer.y, OPlayer.nextDestinationX, OPlayer.nextDestinationY))));
y = OPlayer.y - (63 * sin(degtorad(point_direction(OPlayer.x, OPlayer.y, OPlayer.nextDestinationX, OPlayer.nextDestinationY))));
image_angle = point_direction(OPlayer.x, OPlayer.y, OPlayer.nextDestinationX, OPlayer.nextDestinationY) - 90;