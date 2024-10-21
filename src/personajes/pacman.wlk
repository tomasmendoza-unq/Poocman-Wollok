import wollok.game.*
import estados.estado.*
import Personaje.*

object pacman inherits Personaje{

    method image() {
        return "pacMan-"+estado+"-"+haciaDondeIr+".png"
    }


    method solida() {		  
      return false
    }


    method puntuacion(){
      game.say(self, "Puntuacion: " + level.puntuacion())
    }

    method asesinado() {
      estado = asesinado
      game.say(self, "La quede :P")
      game.schedule(10, {game.stop()})
    }

    method superPacman() {
      estado = superPacman
      game.schedule(10000, {self.normal()})
    }

    method borracho(){
      estado = borracho
    }




    

  
}
