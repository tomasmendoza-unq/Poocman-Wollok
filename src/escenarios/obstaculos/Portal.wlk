import managers.portalManager.*
import managers.posiciones.*
import src.Colision.Colision
import src.personajes.pacman.*


class Portal inherits Colision {
    var property position

    method image() {
        return "portal.png"
    }

    override method solida() {
      return false
	  }

    override method colisionarConPacman() {
      pacman.position(portalManager.posicionDelPortalDeSalida(self))
      direcciones.direccionRandomSiNoSePuedeMover(pacman)
    }

    override method colisionarConSombra(){}

}