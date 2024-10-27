object direcciones{
    const property direcciones = [arriba,abajo,izquierda,derecha]


    method direccionRandom(pesonaje){
        return self.direccionesValidas(pesonaje).anyOne()
    }


    method direccionesValidas(personaje){
        return direcciones.filter({direccion => personaje.sePuedeMoverHacia(direccion)})
    }

}

class Direccion {
    method x(position) 

    method y(position) 

    method opuesto()

    method siguiente(position){
        return game.at(self.x(position), self.y(position))
    }
    
}


object arriba inherits Direccion{
    override method x(position) {
        return position.x()
    }

    override method y(position) {
        return (game.height()-1).min((position.y())+1)
    }


    override method opuesto(){
        return abajo
    }

} 

object izquierda inherits Direccion{
    override method x(position){
        return 0.max(position.x() - 1)
    }

    override method y(position) {
        return position.y()
    }
    
    override method opuesto(){
        return derecha
    }
} 
object derecha inherits Direccion{
    override method x (position){
        return (game.width()-1).min(position.x() + 1)
    }

    override method y(position) {
        return position.y()
    }

    override method opuesto(){
        return izquierda
    }
    
} 

object abajo inherits Direccion{
    
    override method x (position){
        return position.x()
    }

    override method y(position) {
        return 0.max(position.y()-1)
    }

    override method opuesto(){
        return arriba
    }
} 
