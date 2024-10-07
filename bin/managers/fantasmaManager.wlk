import wollok.game.*
import src.comidas.helados.*
import src.personajes.fantasmas.*

object fantasmaManager {
    const fantasma1 = new Fantasma()
    const fantasmasLevel = [fantasma1]

    method crearFantasmas(){
        fantasmasLevel.forEach({fantasma => game.addVisual(fantasma)})
    }

    method hayFantasma(_position){
        return not self.fantasmasEn(_position).isEmpty()
    }

    method fantasmasEn(_position){
        return game.getObjectsIn(_position).filter({obj => fantasmasLevel.contains(obj)})
    }
}