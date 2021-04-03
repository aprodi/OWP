
d4 = 4.0;
h4 = 60.0;

inside_radius = 20.5-3.6;
outside_radius = 20.5;

$fn=100;

translate([0,0,-5]) cylinder(r = 30, h = 5);
    
difference (){

// full cylinder
    cylinder(r = 30, h = 30);

// hollow pipe   
    linear_extrude(height = 30.0) 
    difference() { 
     circle(r=outside_radius); 
     circle(r=inside_radius); 
    } 
// hole    
    rotate ([0,90,0]) 
    translate([-15, 0, 0])
    cylinder(h = h4, d = d4, center = true); 
}

translate([22,-15,30]) rotate([-90,0,0]) cube([10,35,80]);


