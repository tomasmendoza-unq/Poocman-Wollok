import wollok.game.*
import estados.estado.*
import Personaje.*
import managers.levelManager.*
import managers.menuManager.*

object pacman inherits Personaje{

    method image() {
        return "pacMan-"+estado+"-"+direccion+".png"
    }

    method puntuacion(){
      game.say(self, "Puntuacion: " + levelManager.puntuacionLevel())
    }

    method asesinado() {
      estado = asesinado
      menuManager.perdio()
    }

    method superPacman() {
      estado = superPacman
      game.schedule(5000, {self.normal()})
    }

    
    method borracho(){
      estado = borracho
    }  
}
