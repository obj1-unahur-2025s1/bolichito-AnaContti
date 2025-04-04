import persona.*
import objetos.*

object bolichito {
  var objetoEnVidriera = pelota
  var objetoEnMostrador = remera 

  method objetoEnMostrador(objetoAPoner) {
    objetoEnMostrador = objetoAPoner
    
  }

  method objetoEnVidriera(objetoAPoner) {
    objetoEnVidriera = objetoAPoner 
    
  }

  method esBrillante() {
    return objetoEnMostrador.material().brilla()  &&
            objetoEnVidriera.material().brilla() 
    
  }
    method esMonocromatico() {
        return objetoEnMostrador.color() == objetoEnVidriera.color() 
      
    }
    method estaEquilibrado() {
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
      
    }

    method tieneAlgodeColor( unColor ) {
        return objetoEnMostrador.color() == unColor || 
                objetoEnVidriera.color() == unColor 
      
    }
    
    method puedeMejorar() {
        return not  self.estaEquilibrado() ||
                    self.esMonocromatico()
      
    } 
    method puedeOfrecerleAlgoA(unaPersona) {
        return
            unaPersona.leGusta(objetoEnMostrador ) || 
            unaPersona.leGusta(objetoEnVidriera)
    
}
    method intercambiarObjetos() {
      const aux = objetoEnMostrador
      objetoEnMostrador = objetoEnVidriera
      objetoEnVidriera = aux 
    }

    method intercambiar(unObjeto, otroObjeto) {
        objetoEnMostrador = unObjeto
        objetoEnVidriera = otroObjeto
      
    }

}

//mas cosas

object arito {
  method color() {
    return celeste
    
  }  
  method peso() {
    return 180
    
  }
  method material() {
    return cobre 
  }
}

object banquito {
    var color = naranja
 
  method peso() {
    return 1700
    
  }  
  method material() {
    return madera
    
  }


 method color() {
    return color 
   
 }
 method color(unColor){
    color = unColor 
 }


}

object cajita {
    var objetoInterno = arito 
    method color() {
        return rojo
      
    }
    method material() {
        return cobre 
      
    }
    method peso() {
        return 400 + objetoInterno.peso()
      
    }
    method objetoInterno(unObjeto) {
      objetoInterno = unObjeto
    }
  
}