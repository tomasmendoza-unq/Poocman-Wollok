
import wollok.game.*

object fantasmaManager {
    const property fantasmasLevel = []

    method agregarFantasma(fantasma){
        fantasmasLevel.add(fantasma)
    }


    method asustarFantasmas() {
      if (not fantasmasLevel.isEmpty()){
        fantasmasLevel.forEach({fantasma => fantasma.asustarse()})
        game.schedule(8000, {self.desasustarFantasmas()})
      }
    }

    method desasustarFantasmas() {
      fantasmasLevel.forEach({fantasma => fantasma.normalidad()})
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