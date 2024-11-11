import fantasmaManager.*
import escenarios.levels.level1.*
import escenarios.levels.levelPrueba.*
import portalManager.*
import heladoManager.*

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

    method iniciarNivel(){
        game.allVisuals().forEach({visual => game.removeVisual(visual)})
        fantasmaManager.clearLevel()
        portalManager.clearLevel()
        levelActual.iniciarNivel()
    }

    method pasarDeNivel(){
        levelActual = levelActual.siguienteNivel()
    }


    method comioHelado(helado){
        levelActual.comioHelado(helado)
        self.comioTodo()
    }

    method puntuacionLevel(){
        return levelActual.puntuacion()
    }
}