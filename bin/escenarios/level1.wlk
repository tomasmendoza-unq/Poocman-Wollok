import wollok.game.*
import src.comidas.helados.*
import src.personajes.fantasmas.*
import src.managers.fantasmaManager.*

object level1 {
    var puntuacion = 0


    method iniciarNivel(){    
        game.addVisual(new HeladoComun())
        game.addVisual(new BebidaHelada())
        fantasmaManager.crearFantasmas()
        game.addVisual(new Superchocolate())
    }

    method puntuacion(){
        return puntuacion
    }

    method puntuacion(helado) {
        puntuacion += helado.puntos()
    }


}