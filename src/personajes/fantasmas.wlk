import pacman.*
import estados.estado.*
import wollok.game.*
import Personaje.*
import src.managers.posiciones.*

class Fantasma inherits Personaje{

    method image(){
        return "fantasma-"+estado+".png"
    }

    method colisionarConPacman(pacman){
        pacman.estado().colisionarConFantasma(self)
    }  

    method asustarse(){
        self.estado(asustado)
    }

    override method moverse(){
        super()
        self.actualizarDireccion()
    }
    


    method actualizarDireccion(){
            direccion = estado.direccionMov(self,pacman)
    }

    method normalidad (){
        self.normal()
    }

}

class FantasmaTiburon inherits Fantasma(estado = agresivo){


    override method normalidad (){
        estado = agresivo
    }
    override method actualizarDireccion(){
        direccion = estado.direccionMov(self,pacman)
    }
}