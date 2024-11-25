import wollok.game.*
import Helado.*
import src.managers.fantasmaManager.*

class HeladoComun inherits Helado{

    method image() {
        return "heladoComun.png"
    } 

    override method puntos(){
        return 1000
    }

}

class BebidaHelada inherits Helado{


    method image() {
        return "bebida.png"
    } 

    override method puntos(){
        return 20000
    }


    override method colisionarConPacman(pacman){
        super(pacman)
        pacman.borracho()
    }


}
class Superchocolate inherits Helado{


    method image() {
        return "superChocolate.png"
    } 

    override method puntos(){
        return 1000
    }

    override method colisionarConPacman(pacman){
        super(pacman)
        pacman.superPacman()
        fantasmaManager.asustarFantasmas()
    }

}

class BaldeDeHelado inherits Helado{
    method image() {
        return "baldeDeHelado.png"
    } 

    override method puntos(){
        return 1000
    }

    override method colisionarConPacman(pacman){
        super(pacman)
        fantasmaManager.cambiarDePosicionCon(pacman)
    }
}