import wollok.game.*
import src.comidas.helados.*
import src.personajes.fantasmas.*

object fantasmaManager {
    const fantasmasLevel = []

    method agregarFantasma(fantasma){
        fantasmasLevel.add(fantasma)
    }

    method hayFantasma(_position){
        return not self.fantasmasEn(_position).isEmpty()
    }

    method fantasmasEn(_position){
        return game.getObjectsIn(_position).filter({obj => fantasmasLevel.contains(obj)})
    }
}