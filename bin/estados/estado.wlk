import wollok.game.*
import personajes.pacman.*
import managers.fantasmaManager.*
class Estado {
    method direccion(direccion){
        return direccion
    }

    method colisionarConFantasma(fantasma){
        pacman.asesinado() 
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

object normal inherits Estado{}

object asesinado inherits Estado {}

object asustado inherits Estado {
    
}