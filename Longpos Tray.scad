//Lonpos Tray 
//UL = Upper Left 
//BL = Bottom Left 
//UR = Upper Right 
//BR = Bottom Right 

//import all pieces here 

$fn = 100; //Set Resolution 

//sphere parameters 
sphereRadius = 5; //Sphere Center = True 
sphereGap = 1; 
rodLength = (sphereRadius*2) + sphereGap; //Rod Center = False 
rodRadius = 1;
numberOfRows = 0; 
pieceColor = "LightPink";
//spehere parpmeters ------------------------------- 

// tray parameters ---------------------------------
cellHeight = sphereRadius + 1; //how tall should the tray be  
cellSize = (sphereRadius * 2) +sphereGap; //will be a cube, distance from one end to another 
cellPadding = sphereGap; 

//cell templates 
module cell(){
difference(){
    translate([0,0,-(cellHeight/2)]) cube(size = [(cellSize),(cellSize),cellHeight], center = true);
    sphere(r= sphereRadius, center = true);  
    }
}
module cellCenter(){     //cell template with slit for sphere connecting rod 
    difference(){
        cell();
        rotate([0,90,0]) cylinder(h = rodLength, r=rodRadius, center = true);
        rotate([90,0,0]) cylinder(h = rodLength, r=rodRadius, center = true);
    } 
    
}
module cellCornerUL(){
 difference(){ 
  cell();    
 translate([1,0,0]) rotate([0,90,0]) cylinder(h = rodLength - 1, r = rodRadius, center = true);  // minus one, so edge has no gap
 translate([0,-1,0]) rotate([90,0,0]) cylinder(h = rodLength - 1, r = rodRadius, center = true);  // minus one, so edge has no gap
 } 
    
}

module cellCornerBL(){
     difference(){ 
  cell();    
 translate([1,0,0]) rotate([0,90,0]) cylinder(h = rodLength - 1, r = rodRadius, center = true);  // minus one, so edge has no gap
 translate([0,1,0]) rotate([90,0,0]) cylinder(h = rodLength - 1, r = rodRadius, center = true);  // minus one, so edge has no gap
 }       
}
module cellCornerUR(){ 
   difference(){ 
  cell();    
 translate([-1,0,0]) rotate([0,90,0]) cylinder(h = rodLength - 1, r = rodRadius, center = true);  // minus one, so edge has no gap
 translate([0,-1,0]) rotate([90,0,0]) cylinder(h = rodLength - 1, r = rodRadius, center = true);  // minus one, so edge has no gap
 }    
} 

module cellCornerBR(){
     difference(){ 
  cell();    
 translate([-1,0,0]) rotate([0,90,0]) cylinder(h = rodLength - 1, r = rodRadius, center = true);  // minus one, so edge has no gap
 translate([0,1,0]) rotate([90,0,0]) cylinder(h = rodLength - 1, r = rodRadius, center = true);  // minus one, so edge has no gap
 } 
}
module cellEdgeTop(){
  difference(){ 
  cell();    
   translate([0,-1,0]) rotate([90,0,0]) cylinder(h = rodLength, r=rodRadius, center = true);
  rotate([0,90,0]) cylinder(h = rodLength, r = rodRadius, center = true);  // minus one, so edge has no gap
}    
}
module cellEdgeBottom(){
   difference(){ 
  cell();    
   translate([0,1,0]) rotate([90,0,0]) cylinder(h = rodLength, r=rodRadius, center = true);
  rotate([0,90,0]) cylinder(h = rodLength, r = rodRadius, center = true); 
}    
}   
    



// column template , start with origin, then add two cells on top and two cells on bottom 
module columnTemplate(){
translate([0,cellSize*2,0]) cellEdgeTop(); 
translate([0,cellSize,0]) cellCenter(); 
cellCenter(); 
translate([0,-cellSize*2,0]) cellCenter(); 
translate([0,-cellSize,0]) cellEdgeBottom();
    
}
columnTemplate(); 



