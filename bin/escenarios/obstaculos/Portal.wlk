import managers.portalManager.*


class Portal {
    var property position

    method image() {
        return "portal.png"
    }

    method solida() {
		return false
	}

    method colisionarConPacman() {
      pacman.position(portalManager.posicionDelPortalDeSalida(self))
    }

}