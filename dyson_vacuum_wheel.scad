WHEEL_DIAMETER = 12;
INNER_HOLE_DIAMETER=7;
WHEEL_THICKNESS = 7;

difference() {
    cylinder(h=WHEEL_THICKNESS, r=WHEEL_DIAMETER / 2, center=true);
    cylinder(h = WHEEL_THICKNESS * 2, r=INNER_HOLE_DIAMETER / 2, center=true);
}
