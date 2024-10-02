object pacman {
  var haciaDondeIr = derecha  
  
  var property position = game.center() 

  method image() {
    return "pacMan.png"
  }

    method cambioDireccion(direccion) {
      haciaDondeIr = direccion
    }

  method moverse() {
    position = haciaDondeIr.mover()
  }

}

object arriba {
  method mover() {
    return game.at(pacman.position.x(), (pacman.position.y())+1.min(game.height()-1))
  }
    
} 

object izquierda {
    method mover() {
    return game.at(0.max(pacman.position.x() - 1), pacman.position.y())
  }
    
} 
object derecha {
  method mover() {
    return game.at((game.width()-1).min(pacman.position.x() + 1), pacman.position.y())
  }
    
} 

object abajo {
    method mover() {
    return game.at(pacman.position.x(), 0.max(pacman.position.y()-1))
  }
    
} 

