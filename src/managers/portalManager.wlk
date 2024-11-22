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

    
    method portalEn(_position){
        return game.getObjectsIn(_position).filter({obj => portales.contains(obj)}).get(0)
    }

    method clearLevel(){
        portales.clear()
    }
}