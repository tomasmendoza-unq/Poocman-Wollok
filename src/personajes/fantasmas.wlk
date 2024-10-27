import pacman.*
import estados.estado.*
import wollok.game.*
import Personaje.*
import src.managers.posiciones.*

class Fantasma inherits Personaje{

    method image(){
        return "fantasma-"+estado+".png"
    }

    method colisionarConPoocman(poocman){
        poocman.estado().colisionarConFantasma(self)
    }  

    method asustarse(){
        self.estado(asustado)
    }

    override method moverse(){
        super()
        self.actualizarDireccion()
    }
    
    // method text(){
    //     return "" +  self.direccion()
    // }

    method actualizarDireccion(){
        if(not self.sePuedeMover()){
            direccion = direcciones.direccionRandom(self)
        }
    }

    method normalidad (){
        self.normal()
    }

}

class FantasmaBorracho inherits Fantasma(estado = borracho){

    override method image(){
        return "pepita.png"
    }

    
    override method normalidad (){
        estado = borracho
    }
}