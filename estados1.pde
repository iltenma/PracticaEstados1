

Estado e;
void setup()
{  
  e=new Estado(0);
  size(200, 200);
}

void draw()
{ 
  background(0);
  if (e.estadoActual==0)  text("estado cero", 100, 100);
  else if (e.estadoActual==1) text("estado uno", 100, 100);
  else text("estado dos", 100, 100);
}


// oyente de raton
void mousePressed()
{ println("Anterior :"+e.xAnterior);
  // tener en cuenta que pasamos al estado cero si vamos hacia delante 
  // valores mayores de x
  if ((e.estadoActual==0)&(e.xAnterior<mouseX)) 
     { e.estadoActual=1;
       e.xAnterior=mouseX;
     } // pasamos al estado 2 si vamos hacia atrás
  else if ((e.estadoActual==0)&(e.xAnterior>=mouseX)) 
          { e.estadoActual=2;
            e.xAnterior=mouseX;
            
          }
          else { e.estadoActual=0;
                 e.xAnterior=mouseX;}
println("estado :"+e.estadoActual);

println("mouse :"+mouseX);

}