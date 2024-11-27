import levelManager.*
import estados.estadosGame.*
import portalManager.*
import heladoManager.*
import fantasmaManager.*
// QUE VERIFIQUE EL CAMBIO DE ESTADO
object menuManager{
    var estadoGame = inicio
    
    method pressEnter(){
        estadoGame.pressEnter()
    }

    method pressBackSpace(){
        levelManager.clear()
        game.addVisual(pantallaSalida)
        game.stop()
    }

    method pressP(){
        estadoGame.pressP()
    }


    method perdio(){
        self.gameOver()
        self.reiniciar()
    }

    
    method gano(){
        self.win()
        self.reiniciar()
    }

    method reiniciar(){
        levelManager.clear()
        game.addVisual(estadoGame)
        levelManager.level1()
    }

    method inicio(){
        estadoGame = inicio
    }

    method jugando(){
        estadoGame = jugando
    }

    method win(){
        estadoGame = win
    }

    method pausa(){
        estadoGame = pausa
    }
    
    method estadoGame(){
        return estadoGame
    }

    method gameOver(){
        estadoGame = gameOver
    }


}

object pantallaSalida{
    method image(){
        return "creditos.jpg"
    }

    method position(){
        return game.at(3,3)
    }
}