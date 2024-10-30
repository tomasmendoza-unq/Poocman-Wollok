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
        return "bebida.jpg"
    } 

    override method puntos(){
        return 20000
    }


    override method colisionarConPoocman(poocman){
        super(poocman)
        poocman.borracho()
    }


}
class Superchocolate inherits Helado{


    method image() {
        return "heladoComun.png"
    } 

    override method puntos(){
        return 1000
    }

    override method colisionarConPoocman(poocman){
        super(poocman)
        poocman.superPacman()
        fantasmaManager.asustarFantasmas()
    }

}
