import wollok.game.*
import src.comidas.helados.*
import src.personajes.fantasmas.*


object level1 {
    var puntuacion = 0
    const fantasma1 = new Fantasma()
    const fantasmasLevel = [fantasma1]

    method iniciarNivel(){    
        game.addVisual(new HeladoComun())
        fantasmasLevel.forEach({fantasma => game.addVisual(fantasma)})

    }

    method puntuacion(){
        return puntuacion
    }

    method puntuacion(puntos) {
        puntuacion += puntos
    }

    method hayFantasma(_position){
        return not self.fantasmasEn(_position).isEmpty()
    }

    method fantasmasEn(_position){
        return game.getObjectsIn(_position).filter({obj => fantasmasLevel.contains(obj)})
    }
}