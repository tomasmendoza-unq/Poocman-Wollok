
import src.managers.fantasmaManager.*
import src.managers.levelManager.*
import src.managers.posiciones.*
import estados.estado.*
import src.Colision.Colision

class Personaje inherits Colision{
    var property direccion = izquierda
    var property direccionDeLaQueVengo = null 
    var property estado = normal
    var property proximaDireccion = null
    var property position = game.at(10,7)

    
    method cambioDireccion(_direccion) {
        proximaDireccion = estado.direccion(_direccion)
    }

    override method solida() {
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
        direccionDeLaQueVengo = direccion.opuesto()
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

