import estados.estado.*
import wollok.game.*
import Personaje.*

class Fantasma inherits Personaje{

    method image(){
        return "fantasma.png"
    }

    method solida() {
		return false
	}

    method remove() {
        game.removeVisual(self)  
    }

    method colisionarConPoocman(poocman){
        poocman.estado().colisionarConFantasma(self)
    }  

    method asustarse(){
        estado = asustado
    }
}