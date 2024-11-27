import wollok.game.*
import Helado.*
import personajes.pacman.*
import src.Colision.Colision
import src.managers.fantasmaManager.*
import src.managers.tickManager.*

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


    override method colisionarConPacman(){
        super()
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

    override method colisionarConPacman(){
        super()
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

    override method colisionarConPacman(){
        super()
        fantasmaManager.cambiarDePosicionCon(pacman)
    }
}

class CremaDeCielo inherits Helado{
    method image() {
        return "cremaDelCielo.png"
    } 

    override method puntos(){
        return 1000
    }

    override method colisionarConPacman(){
        super()
        tickManager.modificarVelocidad(50,250)
        game.schedule(3000,{tickManager.modificarVelocidad(tickManager.velocidadFantasmasNormal(),tickManager.velocidadPacmanNormal())})
    }
}