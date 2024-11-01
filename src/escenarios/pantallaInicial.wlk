import managers.levelManager.*
import src.managers.fantasmaManager.*
import personajes.pacman.*
object mainScreen {

    const property position = game.at(3, 3)
    
    method image(){
        return "main.jpg"
    }

    method menu(){
        return position
    }

    method iniciarJuego(){
        if (self.inicioNivel()){
            levelManager.iniciarNivel()
            game.onTick(20, "movimiento", {pacman.moverse()})
            game.onTick(10, "movimiento fantasmas", {fantasmaManager.mover()})
        }
    }

    method inicioNivel(){
        return game.getObjectsIn(position).contains(self)
    }


}