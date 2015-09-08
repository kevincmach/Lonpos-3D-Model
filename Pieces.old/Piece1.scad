/*Piece 
    OO
     O  
*/

// measurements are in milimeters (mm) 
$fn = 100; //set resolution 

sphereRadius = 5; 
rodRadius = 1; 
rodLength = 12; 
sphereGap = 1; 
shapeColor = "LightGray"; 

module piece1 (){
//sphere1
sphere(r= sphereRadius, center = true); 
translate([rodLength/2,0,0]) rotate([0,90,0]) cylinder(h = rodLength, r = rodRadius, center = true);  

//sphere2
translate([(sphereRadius*2 + sphereGap),0,0]) sphere(r= sphereRadius, center = true);
translate([(sphereRadius*2 + sphereGap),-sphereRadius,0]) rotate([90,0,0]) cylinder(h = rodLength, r = rodRadius, center = true); 

//sphere3
translate([(sphereRadius*2 + sphereGap),(-sphereRadius*2)-sphereGap,0])  sphere(r= sphereRadius, center = true); 
} 

color(shapeColor) piece1(); 