import coloresYMateriales.*

object remera{
    
    method peso(){
        return 800
    }
    method color(){
        return rojo
    }
    method material(){
        return lino
    }
}

object pelota{
    method peso(){
        return 1300
    }
    method color(){
        return pardo 
    }
    method material(){
        return cuero
    }

}

object biblioteca{
    method peso(){
        return 8000
    }
    method color(){
        return verde
    }
    method material(){
        return madera 
    }
}

object muñeco {
    var property peso = 10
    method color(){
        return celeste
    }
    method material(){
        return vidrio 
    }
  
}

object placa{
    var color = rojo
    var property peso = 1000
    method color(){
        return color
    }
    method color(unColor){
        color = unColor
    }
    method material(){
        return cobre 
    }
}
// Más objectos ... 

object arito{
    
    method peso(){
        return 180
    }
    method material(){
        return cobre
    }
    method color(){
        return celeste
    }

}

object banquito{
    var property color = naranja
    method peso(){
        return 1700
    }
}

object cajita{
    var property objectoDentro = arito
    method peso(){
        return 400 + objectoDentro.peso()
    }
    method color(){
        return rojo
    }
    method material(){
        return cobre
    }
}