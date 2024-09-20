
$fn=50;
Repeat = 6;



minkowski(){
cube([29,7,1],0);
sphere(0.5);
}

for (a =[0:Repeat]) {
    
    if (a==0)  
    {translate([3.69,7.5,-0.25])minkowski(){
cube([6,1.385,1.385],0);

}
    }else 
    {
    if (a<=(Repeat-1))
    { 
    translate([3.69,(a*9.385)+7.5,-0.25])minkowski(){
cube([6,1.385,1.385],0);
 
}
    }
    }


   translate([0,a*9.385,0])minkowski(){
cube([29,7,1],0);
sphere(0.5);
}
}