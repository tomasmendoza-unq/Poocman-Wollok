import wollok.game.*
import estados.estado.*
import Personaje.*
import managers.levelManager.*
import managers.menuManager.*
import src.Colision.Colision

object pacman inherits Personaje{

    const property sombra = new Sombra(position = self.position())

    method image() {
        return "pacMan-"+estado+"-"+direccion+".png"
    }

    method dibujarSombra(){
        game.addVisual(sombra)
    }

    method puntuacion(){
      game.say(self, "Puntuacion: " + levelManager.puntuacionLevel())
    }

    method asesinado() {
      estado = asesinado
      menuManager.perdio()
    }

    override method colisionarConPacman(){
    }  

    override method colisionarConSombra(){
    }


    override method moverse(){
      super()
      sombra.position(self.direccionDeLaQueVengo().siguiente(self.position()))
    }

    method superPacman() {
      estado = superPacman
      game.schedule(5000, {self.normal()})
    }

    
    method borracho(){
      estado = borracho
      game.schedule(5000, {self.normal()})
    }  
}

class Sombra inherits Personaje{

  method image() {
        return "sombra.png" 
  }

  override method colisionarConPacman(){
  }  

  override method colisionarConSombra(){
  }

}