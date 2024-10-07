
object arriba {
  method x(posicion) {
    return posicion.x()
  }

    method y(posicion) {
        return (game.height()-1).min((posicion.y())+1)
    }

    method opuesto(){
        return abajo
    }
} 

object izquierda {
    method x (posicion){
        return 0.max(posicion.x() - 1)
    }

    method y(posicion) {
        return posicion.y()
    }
    
    method opuesto(){
        return derecha
    }
} 
object derecha {
    method x (posicion){
        return (game.width()-1).min(posicion.x() + 1)
    }

    method y(posicion) {
        return posicion.y()
    }

    method opuesto(){
        return izquierda
    }
    
} 

object abajo {
    
    method x (posicion){
        return posicion.x()
    }

    method y(posicion) {
        return 0.max(posicion.y()-1)
    }

    method opuesto(){
        return arriba
    }
} 
