
import wollok.game.*

object fantasmaManager {
    const property fantasmasLevel = []

    method agregarFantasma(fantasma){
        fantasmasLevel.add(fantasma)
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