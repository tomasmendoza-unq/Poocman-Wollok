
import src.managers.fantasmaManager.*
import src.managers.posiciones.*
import estados.estado.*
import escenarios.level1.*
import escenarios.levelPrueba.*

class Personaje{
    var property direccion = derecha
    var property  level = level1
    var property estado = normal
    var property position = game.at(10,7)

    
    method cambioDireccion(_direccion) {
        direccion = estado.direccion(_direccion)
    }

    method solida() {
		return false
	}

    method remove() {
        game.removeVisual(self)  
    }

    method moverse() {
        if (self.sePuedeMoverHacia(direccion)){
            position = direccion.siguiente(position)           
        }
    }

    method haySolido(_position) {
		return game.getObjectsIn(_position).any({cosa => cosa.solida()})
	}

    method sePuedeMoverHacia(_direccion) {
        return not self.haySolido(_direccion.siguiente(position))
    }
    method sePuedeMover() {
        return not self.haySolido(direccion.siguiente(position))
    }

    method normal() {  
        estado = normal 
    }


}