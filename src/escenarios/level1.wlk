import wollok.game.*
import src.comidas.helados.*
import src.personajes.fantasmas.*
import src.managers.fantasmaManager.*
import src.escenarios.laberinto.*

object level1 {
    var puntuacion = 0


    method iniciarNivel(){    
    mapa.dibujar()
    //game.addVisual(new HeladoComun())
    //game.addVisual(new BebidaHelada())
    //fantasmaManager.crearFantasmas()
    //game.addVisual(new Superchocolate())
    }

    method puntuacion(){
        return puntuacion
    }

    method puntuacion(helado) {
        puntuacion += helado.puntos()
    }


}

class Muro {

    const property position

    method image() {
        return "muro.png"
    }

    method solida() {
		return true
	}

}