/* Piece 1
    OO
     O
*/ 

$fn = 100; //Set Resolution 

sphereRadius = 5; //Sphere Center = True 
sphereGap = 1; 
rodLength = (sphereRadius*2) + sphereGap; //Rod Center = False 
rodRadius = 1;
pieceColor = "LightGrey";

module piece1() {
//Rods 
rotate([0,90,0]) cylinder(h=rodLength, r = rodRadius, center = false);
translate([rodLength,0,0]) rotate([90,0,0]) cylinder(h=rodLength, r = rodRadius, center = false);

//Spheres 
sphere(r = sphereRadius, center = true); 
translate([rodLength,0,0]) sphere(r = sphereRadius, center = true); 
translate([rodLength, -rodLength,0]) sphere(r = sphereRadius, center = true); 
}
color(pieceColor) piece1(); 