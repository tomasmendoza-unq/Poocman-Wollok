
import fantasmaManager.*
import escenarios.levels.level1.*
import escenarios.levels.levelPrueba.*
import portalManager.*
import heladoManager.*
import personajes.pacman.*
import src.managers.menuManager.*

object levelManager {

    var property  levelActual = levelPrueba
    
    method hayHelado(){
        return heladoManager.hayHelado()
    }

    method haySolido(_position) {
		return game.getObjectsIn(_position).any({cosa => cosa.solida()})
	}

    method comioTodo(){
        if(not heladoManager.hayHelado()){
            self.pasarDeNivel()
            self.iniciarNivel()
        }
    }
//testear
    method iniciarNivel(){
        self.clear()
        levelActual.iniciarNivel()
        pacman.normal()
        self.addOnTicks()
    }

    method pasarDeNivel(){
        if(levelActual.siguienteNivel()==null){
            self.gano()
        } else {
            levelActual = levelActual.siguienteNivel()
        }
    }

    method level1(){
        levelActual = level1
    }

    method gano(){
        self.clear()
        menuManager.gano()
    }

    method clear(){
        game.allVisuals().forEach({visual => game.removeVisual(visual)})
        self.removeOnTicks()
        fantasmaManager.clearLevel()
        portalManager.clearLevel()
    }

    method hayVisuales(){
        return !game.allVisuals().isEmpty()
    }

    method removeOnTicks(){
        game.removeTickEvent("movimiento")
        game.removeTickEvent("movimiento fantasmas")
    }

    method addOnTicks(){
        game.onTick(50, "movimiento", {pacman.moverse()})
        game.onTick(100, "movimiento fantasmas", {fantasmaManager.mover()})
    }


    method comioHelado(helado){
        levelActual.comioHelado(helado)
        self.comioTodo()
    }

    method puntuacionLevel(){
        return levelActual.puntuacion()
    }
}