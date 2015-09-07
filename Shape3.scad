/*Piece 
    OO
     OO
      O
*/

// measurements are in milimeters (mm) 
$fn = 100; //set resolution 

sphereRadius = 5; 
rodRadius = 1; 
rodLength = 12; 
sphereGap = 1; 
shapeColor = "Pink";

module shape3() {
//shape1
sphere(sphereRadius, center = true);  
translate([rodLength/2,0,0]) rotate([0,90,0]) cylinder(rodLength, rodRadius, center = true); 

//shape2
translate ([sphereRadius*2+sphereGap,0,0]) sphere(sphereRadius, center = true); 

//shape3 
translate([sphereRadius*2 + sphereGap,-(sphereRadius*2) - sphereGap, 0]) sphere(sphereRadius, center = true); 
translate([sphereRadius*2 + sphereGap,-(rodLength/2),0]) rotate([90,0,0]) cylinder(rodLength, rodRadius, center = true); 

//piece4
translate([(sphereRadius*2+sphereGap)*2,-rodLength,0]) sphere(sphereRadius, center = true); 
translate([(rodLength/2)*3,-rodLength,0]) rotate([0,90,0]) cylinder(rodLength, rodRadius, center = true); 

//piece5
translate([(sphereRadius*2+sphereGap)*2,-rodLength*2,0]) sphere(sphereRadius, center = true); 
translate([(sphereRadius*2+sphereGap)*2,-rodLength-(sphereGap*2),0]) rotate([90,0,0]) cylinder(rodLength, rodRadius, center = true);      
}

color(shapeColor) shape3(); 