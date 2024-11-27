import wollok.game.*
object direcciones{
    const property direcciones = [arriba,abajo,izquierda,derecha]


    method direccionRandom(pesonaje){
        return self.direccionesValidas(pesonaje).anyOne()
    }

    // LA DIRECCION FAVORABLE ES LA QUE LO DEJA MAS CERCA hacia un agro 
    // AGRO ES UN TARGET COMO PERSONAJE AL CUAL PERSEGUIRA
    method direccionFavorable(personaje,agro){
        if(self.direccionesValidasSinDeLaQueVengo(personaje).isEmpty()){
            return personaje.direccionDeLaQueVengo()
        } else {
            return self.direccionConLaMenorDistanciaA(personaje,agro) 
        }
    }

    method direccionParaHuir(personaje,agro){
        if(self.direccionesValidasSinDeLaQueVengo(personaje).isEmpty()){
            return personaje.direccionDeLaQueVengo()
        } else {
            return self.direccionConLaMayorDistanciaA(personaje,agro) 
        }
    }

    method direccionConLaMenorDistanciaA(personaje,agro)  {
        return self.direccionesValidasSinDeLaQueVengo(personaje).min({direccion => self.distanciaHacia(personaje,direccion, agro)})
    }

    method direccionConLaMayorDistanciaA(personaje,agro)  {
        return self.direccionesValidasSinDeLaQueVengo(personaje).max({direccion => self.distanciaHacia(personaje,direccion, agro)})
    }


    method distanciaHacia(personaje,direccion,agro){
        return direccion.siguiente(personaje.position()).distance(agro.position())
    }
    
    method direccionRandomSiNoSePuedeMover(personaje){

        if(!personaje.sePuedeMover()){
            personaje.direccion(self.direccionRandom(personaje))
        }
    }


    method direccionesValidas(personaje){
        return direcciones.filter({direccion => personaje.sePuedeMoverHacia(direccion)})
    }

    method direccionesValidasSinDeLaQueVengo(personaje){
        return self.direccionesValidas(personaje).filter({direccion => personaje.direccionDeLaQueVengo() != direccion })
    }

    method estanLasDirecciones(list,ds){
        return ds.all({d => list.contains(d)})
    }

}

class Direccion {
    method x(position) 

    method y(position) 

    method opuesto()

    method siguiente(position){
        return game.at(self.x(position), self.y(position))
    }
    
}


object arriba inherits Direccion{
    override method x(position) {
        return position.x()
    }

    override method y(position) {
       return  if (position.y() == (game.height()- 1)){
            0 
        } else {position.y()+1} 
    }
    // override method y(position) {
    //     return (game.height()-1).min((position.y())+1)
    // }


    // method regado() {
    //     if (position.y() == (game.height() - 1)) {
    //         position = game.at(position.x(), 0)
    //     } else {
    //         position = position.up(1)
    //     }
    // }


    override method opuesto(){
        return abajo
    }
    

} 

object izquierda inherits Direccion{
    
    override method x(position) {
        return  if (position.x() == 0){
            game.width() - 1
        } else {position.x()-1}
    }
    override method y(position) {
        return position.y()
    }
    
    override method opuesto(){
        return derecha
    }


    
} 
object derecha inherits Direccion{
    
    override method x(position) {
        return  if (position.x() == game.width()-1){
            0
        } else {position.x()+1}
    }
    
    
    // override method x (position){
    //     return (game.width()-1).min(position.x() + 1)
    // }

    override method y(position) {
        return position.y()
    }

    override method opuesto(){
        return izquierda
    }
    
} 

object abajo inherits Direccion{
    
    override method x (position){
        return position.x()
    }

    override method y(position) {
        return  if (position.y() == 0 ){
            game.height() - 1
        } else {position.y() - 1 }
    }
    
    
    
    // override method y(position) {
    //     return 0.max(position.y()-1)
    // }

    override method opuesto(){
        return arriba
    }
    

} 
