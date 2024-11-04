
import wollok.game.*
import levelManager.*
object fantasmaManager {
    const property fantasmasLevel = []
    const property puntosDeReapacion = #{}

    method agregarFantasma(fantasma){
        fantasmasLevel.add(fantasma)
    }

    method agregarPunto(punto){
        puntosDeReapacion.add(punto)
    }

    method asustarFantasmas() {
        fantasmasLevel.forEach({fantasma => fantasma.asustarse()})
        game.schedule(5000, {self.desasustarFantasmas()})
    }
    
    method mover(){
        self.sePuedenMover().forEach({personaje => personaje.moverse()})
    }

    method sePuedenMover(){
        return fantasmasLevel.filter({fantasma => fantasma.sePuedeMover()})
    }

    method desasustarFantasmas() {
        fantasmasLevel.forEach({fantasma => fantasma.normalidad()})
    }

    method reaparecerFantasma(f){
        game.schedule(5000, {self.revivirFantasma(f)})
    }

    //precondicion: debe existir al menos un punto de reaparicion
    //proposito: revive un fantasma dado en un punto de reaparicion random
    method revivirFantasma(f){
        self.puntoRandom().revivirFantasma(f)
    }

    method puntoRandom(){
        return puntosDeReapacion.anyOne()
    }

    // proposito: cuando termine un nivel tiene que llamar al metodo
    method clearLevel(){
        fantasmasLevel.clear()
        puntosDeReapacion.clear()
    }

    method hayFantasma(_position){
        return not self.fantasmasEn(_position).isEmpty()
    }

    method fantasmasEn(_position){
        return game.getObjectsIn(_position).filter({obj => fantasmasLevel.contains(obj)})
    }

    method direccionesFantasma(){
        return fantasmasLevel.map({fantasma => fantasma.position()})
    }
}
