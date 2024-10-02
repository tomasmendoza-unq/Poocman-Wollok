object pacman {
    var haciaDondeIr = izquierda

    var property position = game.at(10,7)

    method image() {
        return "pacMan.png"
    }

    method cambioDireccion(direccion) {
        haciaDondeIr = direccion
    }

  method moverse() {
      position = game.at(haciaDondeIr.x(self.position()), haciaDondeIr.y(self.position()))
  }

}

object arriba {
  method x(posicion) {
    return posicion.x()
  }

  method y(posicion) {
    return (game.height()-1).min((posicion.y())+1)
  }
} 

object izquierda {
  method x (posicion){
    return 0.max(posicion.x() - 1)
  }

  method y(posicion) {
    return posicion.y()
  }
    
} 
object derecha {
  method x (posicion){
    return (game.width()-1).min(posicion.x() + 1)
  }

  method y(posicion) {
    return posicion.y()
  }
    
} 

object abajo {
    
    method x (posicion){
    return posicion.x()
  }

  method y(posicion) {
    return 0.max(posicion.y()-1)
  }
} 
