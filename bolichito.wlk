import objectos.*
object bolichito{
    var property enVidriera =  placa
    var property enMostrador = muñeco 
    
    method sonMaterialesBrillantes(objecto1, objecto2){
        return objecto1.material().esBrillante() and objecto2.material().esBrillante()
    }
    method sonDelMismoColor(objecto1, objecto2){
        return objecto1.color() == objecto2.color()
    }

    method esBolichitoBrillante(){
        return self.sonMaterialesBrillantes(enVidriera, enMostrador)
    }

    method esBolichitoMonocromatico(){
        return self.sonDelMismoColor(enVidriera, enMostrador)

    }

    method esbolichitoEquilibrado(){
        return enMostrador.peso() > enVidriera.peso()
    }

    method hayObjectoExhibidoDeColor(unColor){
        return enVidriera.color() == unColor ||
               enMostrador.color() == unColor
    }

    method puedeMejorar(){
        return self.esbolichitoEquilibrado() || self.esBolichitoMonocromatico()
    }
    
    method puedeOfrecerleAlgoA(unaPersona){
        return unaPersona.leGusta(enVidriera) || unaPersona.leGusta(enMostrador)
    }



    
}
