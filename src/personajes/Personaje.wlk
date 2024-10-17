import src.escenarios.level1.level1
import src.managers.fantasmaManager.*
import src.managers.posicionManager.*
import estados.estado.*

class Personaje{
    var haciaDondeIr = derecha
    var property  level = level1
    var property estado = normal
    var property position = game.at(10,7)

    
    method cambioDireccion(direccion) {
        haciaDondeIr = estado.haciaDondeIr(direccion)
    }

    method moverse() {
        const next = game.at(haciaDondeIr.x(self.position()), haciaDondeIr.y(self.position()))

        self.validarAtravesables(next)
        position = next
    }

    method haySolido(_position) {
		return game.getObjectsIn(_position).any({cosa => cosa.solida()})
	}

    method validarAtravesables(_position) {
		if (self.haySolido(_position)) {
			self.error("No puedo ir ahí")
		}
	}


}