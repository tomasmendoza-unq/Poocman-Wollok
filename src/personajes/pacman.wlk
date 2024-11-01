import wollok.game.*
import estados.estado.*
import Personaje.*
import managers.levelManager.*

object pacman inherits Personaje{

    method image() {
        return "pacMan-"+estado+"-"+direccion+".png"
    }

    method puntuacion(){
      game.say(self, "Puntuacion: " + levelManager.puntuacionLevel())
    }

    method asesinado() {
      estado = asesinado
      game.say(self, "La quede :P")
      game.schedule(10, {game.stop()})
    }

    method superPacman() {
      estado = superPacman
      game.schedule(5000, {self.normal()})
    }

    method borracho(){
      estado = borracho
    }  
}
