/*Piece 
    OOOO
    O  
*/

// measurements are in milimeters (mm) 
$fn = 100; //set resolution 

sphereRadius = 5; 
rodRadius = 1; 
rodLength = 12; 
sphereGap = 1; 
shapeColor = "MediumBlue";

module piece2 (){
//piece1 
translate([0,-(sphereRadius*2 + sphereGap),0]) sphere(r= sphereRadius, center = true); 
translate([0,-(rodLength/2),0]) rotate([90,0,0]) cylinder(h = rodLength, r = rodRadius, center = true); 


//piece2
sphere(r= sphereRadius, center = true); 

//piece3
translate([(sphereRadius*2 + sphereGap),0,0]) sphere(r= sphereRadius, center = true); 
translate([rodLength/2,0,0]) rotate([0,90,0]) cylinder(h = rodLength, r = rodRadius, center = true); 

//piece4
translate([(sphereRadius*4 + sphereGap*2),0,0]) sphere(r= sphereRadius, center = true); 
translate([(rodLength/2)*2,0,0]) rotate([0,90,0]) cylinder(h = rodLength, r = rodRadius, center = true); 

//piece5
translate([(sphereRadius*6 + sphereGap*3),0,0]) sphere(r= sphereRadius, center = true); 
translate([(rodLength/2)*4,0,0]) rotate([0,90,0]) cylinder(h = rodLength, r = rodRadius, center = true); 
} 

color(shapeColor) piece2(); 