$fn=100;
big_diameter=85;
small_diameter=70;
thickness=3;
big_height=40;
small_height=40;
inter_height=20;
offcenter=false;

// Grande section 
difference() {
    cylinder(h=big_height, d=big_diameter, center=false);
    cylinder(h=big_height, d=big_diameter-thickness, center=false);
}

// Section réductive
translate([0, 0, big_height]) {
    difference() {
        cylinder(h=inter_height, d1=big_diameter, d2=small_diameter, center=false);
        cylinder(h=inter_height, d1=big_diameter-thickness, d2=small_diameter-thickness, center=false);
    }
}

// petite section
translate([0, 0, big_height+inter_height]) {
    difference() {
        cylinder(h=small_height, d=small_diameter, center=false);
        cylinder(h=small_height, d=small_diameter-thickness, center=false);
    }
}
