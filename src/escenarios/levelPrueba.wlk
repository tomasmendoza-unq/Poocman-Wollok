import wollok.game.*
import src.comidas.helados.*
import src.personajes.fantasmas.*
import src.managers.fantasmaManager.*
import src.escenarios.mapaDePrueba.*
import src.escenarios.pantallaInicial.*
import personajes.pacman.*

object levelPrueba {
    var puntuacion = 0


    method iniciarNivel(){    
        self.validarPantallaDeInicio()
        game.removeVisual(mainScreen)
        mapa.dibujar()
        // game.onTick(20, "movimiento", {pacman.moverse()})

        game.onTick(1000, "movimiento fantasmas", {fantasmaManager.mover()})

    }

    method validarPantallaDeInicio() {
        const posicionMainScreen = mainScreen.menu()
        const objetosEnOrigen = game.getObjectsIn(posicionMainScreen)
        
        if (not objetosEnOrigen.contains(mainScreen)){
            self.error("No estoy en la pantalla principal")
        }
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