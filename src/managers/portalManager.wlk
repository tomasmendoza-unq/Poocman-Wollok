import escenarios.obstaculos.Portal.*


object portalManager{
    const portales = #{}

    method agregarPortal(portal){
        portales.add(portal)
    }

    method portalDeSalida(portal) {
      return portales.find({portalM => portalM != portal})
    }

    method posicionDelPortalDeSalida(portal){
        return self.portalDeSalida(portal).position()
    }
}