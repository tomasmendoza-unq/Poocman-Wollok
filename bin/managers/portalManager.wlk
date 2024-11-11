import escenarios.obstaculos.Portal.*


object portalManager{
    const portales = #{}

    method agregarPortal(portal){
        portales.add(portal)
    }

    method portalDeSalida(portal) {
      return portales.filter({portalM => portalM != portal}).anyOne()
    }

    method posicionDelPortalDeSalida(portal){
        return self.portalDeSalida(portal).position()
    }

    method clearLevel(){
        portales.clear()
    }
}