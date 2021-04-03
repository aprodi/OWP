
d4 = 6.0;
h4 = 60.0;

$fn=100;

difference (){

    cylinder(r = 30, h = 20);
    cylinder(r = 20.5, h = 20);  
}   

difference (){
      translate([0,0,-20-1]) cylinder(r = 30, h = 20);
      translate([0,0,-20-1]) cylinder(r = 20.5, h = 20);  
}

difference () {
      translate([22,-20,-21]) cube([10,70,41]); 
}

translate([22,29,30]) rotate([-90,0,0]) cube([10,30,21]);