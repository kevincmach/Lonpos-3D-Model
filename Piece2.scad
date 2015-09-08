/* Piece 1
    OOOO
    O
*/ 

$fn = 100; //Set Resolution 

sphereRadius = 5; //Sphere Center = True 
sphereGap = 1; 
rodLength = (sphereRadius*2) + sphereGap; //Rod Center = False 
rodRadius = 1;
pieceColor = "DarkBlue";

module piece2() {
//Rods 
rotate([0,90,0]) cylinder(h = rodLength, r = rodRadius, center = false); 
translate([(rodLength),0,0]) rotate([0,90,0]) cylinder(h = rodLength, r = rodRadius, center = false); 
translate([(rodLength*2),0,0])rotate([0,90,0]) cylinder(h = rodLength, r = rodRadius, center = false); 
rotate([90,0,0]) cylinder(h = rodLength, r = rodRadius, center = false); 

//Spheres
translate([0,-rodLength,0]) sphere(r=sphereRadius, center = true); 
sphere(r=sphereRadius, center = true); 
translate([rodLength,0,0]) sphere(r=sphereRadius, center = true); 
translate([(rodLength*2),0,0]) sphere(r=sphereRadius, center = true); 
translate([(rodLength*3),0,0]) sphere(r=sphereRadius, center = true); 
} 
color(pieceColor) piece2(); 