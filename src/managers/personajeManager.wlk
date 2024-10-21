object personajeManager {
    const property personajesLevel = []

    method agregarPersonaje(personaje){
        personajesLevel.add(personaje)
    }

    method mover(){
        self.sePuedenMover().forEach({personaje => personaje.moverse()})
    }



    method sePuedenMover(){
        return personajesLevel.filter({personaje => personaje.sePuedeMover()})
    }

    method cambioDireccion(direccion) {
        personajesLevel.forEach({personaje => personaje.cambioDireccion(direccion)})
    }

}