BEAM_WIDTH = 25.20;
BEAM_HEIGHT = 15.28;

HOOK_LENGTH = 2;
HOOK_THICKNESS = 10;

module open_box(x, y, z, a) {
    difference() {
        cube([x+a, y+a, z], center=true);
        translate([0, 0, - a/2]) {
            cube([x, y + a + 1, z], center=true);
        }
    }
}

union() {
    open_box(BEAM_HEIGHT, HOOK_LENGTH, BEAM_WIDTH, HOOK_THICKNESS);

    mirror([0, 0, 1]) 
    translate([BEAM_WIDTH-8.739, 0, BEAM_WIDTH/4])
    open_box(BEAM_HEIGHT/2, HOOK_LENGTH, BEAM_WIDTH/2, HOOK_THICKNESS);
}
