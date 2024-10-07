import wollok.game.*;
import src.escenarios.level1.*;
class HeladoComun {
    var property position = game.at(10,10);

    method image() {
        return "heladoComun.png"
    } 

    method puntuacion(){
        return 1000
    }

    method remove(){
        game.removeVisual(self)
    }

    method colisionarConPoocman(poocman){
        self.remove()
        level1.puntuacion(1000)
    }
}