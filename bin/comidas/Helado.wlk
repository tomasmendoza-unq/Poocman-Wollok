
import managers.levelManager.*

class Helado {
    const property position  

    method puntos()

    
    method remove(){
        game.removeVisual(self)
    }

    method colisionarConPacman(){
        self.remove()
        levelManager.comioHelado(self)
    }

    method solida() {
		return false
	}
}

