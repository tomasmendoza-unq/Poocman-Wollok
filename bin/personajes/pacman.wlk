import wollok.game.*
import src.escenarios.level1.level1
import src.managers.fantasmaManager.*
import src.managers.posicionManager.*

object pacman {
    var haciaDondeIr = derecha
    var property  level = level1
    var property estado = normal

    var property position = game.at(10,7)

    method image() {
        return "pacMan-"+estado+"-"+haciaDondeIr+".png"
    }

    method cambioDireccion(direccion) {
          haciaDondeIr = estado.haciaDondeIr(direccion)
    }


  method moverse() {
      position = game.at(haciaDondeIr.x(self.position()), haciaDondeIr.y(self.position()))
  }

  method puntuacion(){
    game.say(self, "Puntuacion: " + level.puntuacion())
  }

  method asesinado() {
      game.say(self, "La quede :P")
      game.schedule(10, {game.stop()})
  }

  method sigueVivo(){
    return not fantasmaManager.hayFantasma(position)
  }

  method borracho(){
    estado = borracho
  }
  method transformacionssj() {
      estado = ssj
      game.schedule(10000, {self.normal()})
    
  }
  method normal() {
    estado = normal 
    }
    method estatransformado() {
      return estado == ssj 
      
    }

  
}

object  ssj  {
    method haciaDondeIr(direccion){
      return direccion
    }
  
}

object borracho {
    method haciaDondeIr(direccion){
      return direccion.opuesto()
    }
}

object normal{
  method haciaDondeIr(direccion){
    return direccion
  }
}