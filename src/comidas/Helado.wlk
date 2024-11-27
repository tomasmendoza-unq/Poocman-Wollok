import src.Colision.Colision
import managers.levelManager.*

class Helado inherits Colision{
    const property position  

    method puntos()

    
    method remove(){
        game.removeVisual(self)
    }

    override method colisionarConPacman(){
        self.remove()
        levelManager.comioHelado(self)
    }

    override method colisionarConSombra(){}

    override method solida() {
		return false
	}
}

