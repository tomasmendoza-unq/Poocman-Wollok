
import fantasmaManager.*
import escenarios.levels.level1.*
import escenarios.levels.levelPrueba.*
import portalManager.*
import heladoManager.*
import personajes.pacman.*
import src.managers.menuManager.*
import tickManager.*

object levelManager {

    var property  levelActual = level1
    
    method hayHelado(){
        return heladoManager.hayHelado()
    }

    method haySolido(_position) {
		return game.getObjectsIn(_position).any({cosa => cosa.solida()})
	}

    method comioTodo(){
        if (!heladoManager.hayHelado()) {
            self.pasarDeNivel()
            if (self.noHayMasNiveles()) {
                self.gano()
            }   else {
                self.iniciarNivel()
            }   
        }
    }

    method noHayMasNiveles() {
        return levelActual == null
    }

    method iniciarNivel(){
        self.clear()
        levelActual.iniciarNivel()
        tickManager.addOnTicks()
        pacman.normal()
    }

    method pasarDeNivel(){
            levelActual = levelActual.siguienteNivel()
    }

    method level1(){
        levelActual = level1
    }

    method gano(){
        menuManager.gano()
    }

    method clear(){
        game.allVisuals().forEach({visual => game.removeVisual(visual)})
        fantasmaManager.clearLevel()
        tickManager.removeOnTicks()
        portalManager.clearLevel()
        heladoManager.clearLevel()
    }

    method hayVisuales(){
        return !game.allVisuals().isEmpty()
    }


    method comioHelado(helado){
        levelActual.comioHelado(helado)
        self.comioTodo()
    }

    method puntuacionLevel(){
        return levelActual.puntuacion()
    }
}