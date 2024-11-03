$fn=64;

union() {
    color([.5, .5, 1, .5]) {
        union() {
            translate([0,0,1])
                cylinder(h=39-13, d = 13);
            
            translate([0,0,40-13])
                sphere(d = 13);
            
            translate([0,0,0])
                cylinder(h=1, d1 = 10, d2 = 13);
        }        
    }

    r = 3.9 / 2;
    for(deg = [45 : 30 : 345]) {
        x = r * cos(deg);
        y = r * sin(deg);
    
        color("gold") {
            translate([x, y, -5])
                cylinder(h=5, d = 0.5);
        }
    }

    color("gold")
        translate([r * cos(15), r * sin(15), -1])
            cylinder(h=1, d = 0.5);
}