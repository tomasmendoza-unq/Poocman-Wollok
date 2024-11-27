import managers.portalManager.*
import managers.posiciones.*

class Portal {
    var property position

    method image() {
        return "portal.png"
    }

    method solida() {
		return false
	}

    method colisionarConPacman(pacman) {
      pacman.position(portalManager.posicionDelPortalDeSalida(self))
      direcciones.direccionRandomSiNoSePuedeMover(pacman)
    }

}