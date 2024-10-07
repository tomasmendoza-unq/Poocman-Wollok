import wollok.game.*
import src.escenarios.level1.level1

object pacman {
    var haciaDondeIr = izquierda
    var property  level = level1

    var property position = game.at(10,7)

    method image() {
        return "pacMan.png"
    }

    method cambioDireccion(direccion) {
        haciaDondeIr = direccion
    }


  method moverse() {
      position = game.at(haciaDondeIr.x(self.position()), haciaDondeIr.y(self.position()))
      self.colision()
  }

  method colision() {
      game.colliders(self).forEach({obj => obj.colisionarConPoocman(self)})
  }

  method puntuacion(){
    game.say(self, "Puntuacion: " + level.puntuacion())
  }

  method asesinado() {
      game.say(self, "La quede :P")
      game.schedule(10, {game.stop()})
  }

  method sigueVivo(){
    return not level.hayFantasma(position)
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
