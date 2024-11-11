
import src.managers.fantasmaManager.*
import src.managers.levelManager.*
import src.managers.posiciones.*
import estados.estado.*
import escenarios.levels.level1.*

class Personaje{
    var property direccion = arriba
    var property estado = normal
    var property proximaDireccion = null
    var property position = game.at(10,7)

    
    method cambioDireccion(_direccion) {
        proximaDireccion = estado.direccion(_direccion)
    }

    method solida() {
		return false
	}

    method remove() {
        game.removeVisual(self)  
    }

    method moverse() {
        if (proximaDireccion != null && self.sePuedeMoverHacia(proximaDireccion)){
            direccion = proximaDireccion
            proximaDireccion = null
            position = direccion.siguiente(position)           
        }else if (self.sePuedeMoverHacia(direccion)) {
            position = direccion.siguiente(position)
        }
    }

    method sePuedeMoverHacia(_direccion) {
        return not levelManager.haySolido(_direccion.siguiente(position))
    }
    
    method sePuedeMover() {
        return self.sePuedeMoverHacia(direccion)
    }

    method normal() {  
        estado = normal 
    }
    


}