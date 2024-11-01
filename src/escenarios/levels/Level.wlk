import wollok.game.*
import src.comidas.helados.*
import src.personajes.fantasmas.*
import src.managers.heladoManager.*
import src.escenarios.pantallaInicial.*

class Level {
    var property puntuacion = 0

    method mapa()

    method iniciarNivel(){    
        self.mapa().dibujar()
    }

    method siguienteNivel()


    method puntuacion(){
        return puntuacion
    }

    method puntuacion(helado) {
        puntuacion += helado.puntos()
    }

    method comioHelado(helado){
        self.puntuacion(helado)
        heladoManager.comioHelado(helado)
    }

}

