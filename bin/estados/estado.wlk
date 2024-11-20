import wollok.game.*
import personajes.pacman.*
import managers.posiciones.*
import managers.fantasmaManager.*
class Estado {
    method direccion(direccion){
        return direccion
    }

    method colisionarConFantasma(fantasma){
        pacman.asesinado() 
    }

    method direccionMov(personaje,agro){
        return personaje.direccion()
    }
}


object  superPacman  inherits Estado{
    override method colisionarConFantasma(fantasma){
        game.removeVisual(fantasma)
        fantasmaManager.reaparecerFantasma(fantasma)
    }
}

object borracho inherits Estado{
    override method direccion(direccion){
        return super(direccion).opuesto()
    }
}

object agresivo inherits Estado {
    override method direccionMov(personaje,agro){
        return direcciones.direccionFavorable(personaje,agro)
    }
}



object normal inherits Estado{}

object asesinado inherits Estado {}

object asustado inherits Estado {
    override method direccionMov(personaje,agro){
        return direcciones.direccionParaHuir(personaje,agro)
    }
}