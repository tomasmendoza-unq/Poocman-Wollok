
import src.managers.fantasmaManager.*
import src.managers.posiciones.*
import estados.estado.*
import escenarios.level1.*
import escenarios.levelPrueba.*

class Personaje{
    var property   haciaDondeIr = derecha
    var property  level = level1
    var property estado = normal
    var property position = game.at(10,7)

    
    method cambioDireccion(direccion) {
        haciaDondeIr = estado.haciaDondeIr(direccion)
    }

    method moverse() {
        // self.validarAtravesable()
        if (self.sePuedeMover()){
         position = self.siguientePosicion()            
        }
    }

    method siguientePosicion(){
        return game.at(haciaDondeIr.x(self.position()), haciaDondeIr.y(self.position()))
    }

    method haySolido(_position) {
		return game.getObjectsIn(_position).any({cosa => cosa.solida()})
	}

    // method validarAtravesable() {
	// 	if (not self.sePuedeMover()) {
	// 		self.error("No puedo ir ahí")
	// 	}
	// }

    method sePuedeMover(){
        return not self.haySolido(self.siguientePosicion())
    }

    method normal() {  
        estado = normal 
    }


}