a = false;
_ = "";
// Шаг волны
k = 50;

// Кол-во волн
c = 5;
__ = "";
// Карнизный свеc
E = 10;

// Высота Карнизной ступень
h = 3.8;

// Толщина металического листа
s = 0.45;
___ = "";
// (     R               G               B       )
color = [68,47,41];

color([color[0]/255,color[1]/255,color[2]/255]) rotate([90,0,0]){
    for(i = [0:c-1]){
        translate([0,h*i,k*i]){
            linear_extrude(height=k+0.5){
                import("11006_47014.svg");
            }
            linear_extrude(height=s){
                import("11006_47014_prof.svg");
            }
        }
    }
    translate([0,-h,-E]){
        linear_extrude(height=E){
            import("11006_47014.svg");
        }           
    }
}
