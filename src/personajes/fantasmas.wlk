import pacman.*
import estados.estado.*
import wollok.game.*
import Personaje.*
import src.managers.posiciones.*

class Fantasma inherits Personaje{

    method image(){
        return "fantasma-"+estado+".png"
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
        self.estado(asustado)
    }

    method normalidad() {
        self.estado(normal)
        estado = asustado
        game.schedule(10000, {self.normal()})
    }

    override method moverse(){
        self.validarSiPuedeMoverse()
        super()
    }


    method validarSiPuedeMoverse(){
        if(not self.sePuedeMover()){
            haciaDondeIr = posicion.direccionRandom()
        }
    }


}

class FantasmaBorracho inherits Fantasma(estado = borracho){

    // TODO: PONER UNA IMAGEN DE UN FANTASMA BORRACHO
    override method image(){
        return "pepita.png"
    }

    override method asustarse(){
        estado = asustado
        game.schedule(10000, {self.borracho()})
    }

    
    method borracho(){
        estado = borracho
    }
}